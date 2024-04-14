import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_maths_tricks/app/app_routes.dart';
import 'package:flutter_maths_tricks/app/key_util.dart';
import 'package:flutter_maths_tricks/auth/auth_controller.dart';
import 'package:flutter_maths_tricks/controller/setting_controller.dart';
import 'package:flutter_maths_tricks/data/hive_data.dart';

// import 'package:flutter_maths_tricks/generated/intl/messages_all.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:logger/logger.dart';

import 'package:flutter_maths_tricks/theme/app_theme.dart';
import 'package:flutter_maths_tricks/theme/controller/theme_controller.dart';

import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'app_info_cubit.dart';
import 'generated/l10n.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

String selectedNotificationPayload = "";

ThemeController themeController = Get.put(ThemeController());
String defTimeZoneName = "America/Detroit";
SettingController settingController = Get.put(SettingController());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    Get.put(AuthController());
  });
  // Load saved language
  String? savedLanguage = await settingController.loadSelectedLanguage();
  print('&&&&&&&&&&&&&&&&&&&&&' +
      "Saved Language: $savedLanguage"); // Add this line

  if (savedLanguage != null) {
    settingController.selectedLanguage.value = savedLanguage;
  }

  // await _configureLocalTimeZoneone();
  await _configureLocalTimeZone();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  final IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
          onDidReceiveLocalNotification:
              (int? id, String? title, String? body, String? payload) async {
            didReceiveLocalNotificationSubject.add(ReceivedNotification(
                id: id!, title: title!, body: body!, payload: payload!));
          });
  const MacOSInitializationSettings initializationSettingsMacOS =
      MacOSInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false);
  final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {
    print("selectnoti==terue");
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }

    selectedNotificationPayload = payload!;
    selectNotificationSubject.add(payload);
  });

  if (!kIsWeb) {
    var appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
  }

  /// asking for notification permission
  await Permission.notification.isDenied.then((value) {
    Logger().d("Notification Permission: $value");
    if (value) {
      Permission.notification.request();
    }
  });

  MobileAds.instance.initialize();
  HiveData.registerAdapter();
  HiveData.openAllBox();

  runApp(MyApp());
}

Future<void> _configureLocalTimeZone() async {
  tz.initializeTimeZones();

  final String timeZoneName = await FlutterTimezone.getLocalTimezone();

  // final timeZone = TimeZone();
  // String timeZoneName = await timeZone.getTimeZoneName();
  print("getname===$timeZoneName");
  try {
    tz.Location getlocal =
        tz.getLocation(timeZoneName.replaceAll("Calcutta", "Kolkata"));
    tz.setLocalLocation(getlocal);
  } catch (e) {
    print(e);
    tz.Location getlocal = tz.getLocation(defTimeZoneName);
    tz.setLocalLocation(getlocal);
    print("getnamerr=${e.toString()}");
  }
  // tz.setLocalLocation(tz.getLocation(timeZoneName));
  // tz.setLocalLocation(TimeZone.getDefault().id);
}

class FlutterNativeTimezone {}

String _getTimeZoneName(Duration offset) {
  // Convert the offset to timezone name
  String sign = offset.isNegative ? '-' : '+';
  String hours = (offset.inHours % 24).toString().padLeft(2, '0');
  String minutes = (offset.inMinutes % 60).toString().padLeft(2, '0');
  return 'GMT$sign$hours:$minutes';
}

void printHello() {
  print("hello----world! isolate='");

  FlutterLocalNotificationsPlugin flip = new FlutterLocalNotificationsPlugin();
  var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
  var ios = new IOSInitializationSettings();
  var settings = new InitializationSettings(android: android, iOS: ios);
  flip.initialize(settings);
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String title;
  final String body;
  final String payload;
}

final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String> selectNotificationSubject =
    BehaviorSubject<String>();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(name: 'app_open');

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppInfoCubit()),
      ],
      child: GetBuilder<ThemeController>(
        builder: (controller) {
          return GetMaterialApp(
            title: 'Math Trick Pro',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            darkTheme: AppTheme.darkTheme,
            themeMode: controller.themeMode,
            routes: appRoutes,
            initialBinding: BindingsBuilder(() {
              Get.lazyPut<AuthController>(() => AuthController());
            }),
            initialRoute: KeyUtil.splash,
            locale: Locale(settingController.selectedLanguage.value),
            localizationsDelegates: [
              S.delegate, // # Add this line
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
        init: ThemeController(),
      ),
    );
  }
}
