// settig_widget.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maths_tricks/app/key_util.dart';
import 'package:flutter_maths_tricks/app_info_cubit.dart';
import 'package:flutter_maths_tricks/auth/regitseration.dart';
import 'package:flutter_maths_tricks/contants/constnts.dart';
import 'package:flutter_maths_tricks/generated/l10n.dart';
import 'package:flutter_maths_tricks/main.dart';
import 'package:flutter_maths_tricks/model/color_model.dart';
import 'package:flutter_maths_tricks/theme/color_scheme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/setting_controller.dart';
import '../../utils/util.dart';
import '../common/common.dart';
import '../dialog/rate_dialog.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingPage();
  }
}

class _SettingPage extends State<SettingPage> with TickerProviderStateMixin {
  onBack() {
    Get.back();
  }

  SettingController settingController = Get.put(SettingController());

  ColorModel tuple3 = getRandomColor(0);

  @override
  void initState() {
    super.initState();
    context.read<AppInfoCubit>().fetchAppInfo();

    // fetchAppInfo(); // Fetch app version and build number
  }

  String? appVersion;
  String? buildNumber;

  // fetch app version and build number and store in shared preferences
  void fetchAppInfo() async {
    if (appVersion != null && buildNumber != null) {
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    final currentVersionNumber = packageInfo.version;
    final currentBuildNumber = packageInfo.buildNumber;

    // Check if version number and build number are already stored in SharedPreferences
    appVersion = prefs.getString('appVersion');
    buildNumber = prefs.getString('buildNumber');

    if (appVersion == null || appVersion != currentVersionNumber) {
      // Store the current version number in SharedPreferences
      await prefs.setString('appVersion', currentVersionNumber);
      appVersion = currentVersionNumber;
    }

    if (buildNumber == null || buildNumber != currentBuildNumber) {
      // Store the current build number in SharedPreferences
      await prefs.setString('buildNumber', currentBuildNumber);
      buildNumber = currentBuildNumber;
    }

    debugPrint(
        'App version: $appVersion and the build number is: $buildNumber ');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Semantics(
          label: 'Setting Screen',
          child: Scaffold(
            appBar: getNoneAppBar(context, color: getBackgroundColor(context)),
            body: SafeArea(
              child: Column(
                children: [
                  getCommonAppBar(
                      context: context,
                      function: () {
                        onBack();
                      },
                      title: S.current.setting,
                      isSetting: true,
                      color: tuple3.darkColor),
                  50.verticalSpace,
                  Expanded(
                      child: ListView(
                    children: [
                      getItem(
                        context: context,
                        function: () {},
                        title: authController.userEmailAddress,
                      ),

                      Obx(() {
                        return getSwitchItem(
                            context: context,
                            function: (value) {
                              settingController.changeSoundValue(value);
                            },
                            title: S.current.sound,
                            value: settingController.isSound.value);
                      }),
                      Obx(() {
                        return getSwitchItem(
                            context: context,
                            function: (value) {
                              settingController.changeVibrationValue(value);
                            },
                            title: S.current.vibration,
                            value: settingController.isVibration.value);
                      }),
                      getSwitchItem(
                          context: context,
                          function: (value) {
                            themeController.changeTheme();
                          },
                          title: S.current.nightMode,
                          value: themeController.isDarkTheme),
                      // DropDown

                      Container(
                        margin: EdgeInsets.only(
                            bottom: 20.h, right: horSpace, left: horSpace),
                        height: 75.h,
                        decoration: getDefaultDecoration(
                            radius: 15.r,
                            bgColor: themeController.isDarkTheme
                                ? getCardColor(context)
                                : getRandomColor(0).alphaColor),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: InkWell(
                          child: Row(
                            children: [
                              Expanded(
                                // child: getText(title),
                                child: Obx(() {
                                  return DropdownButton<String>(
                                    // remove underline
                                    underline: Container(),
                                    hint: getText("Langauage"),
                                    isExpanded: true,
                                    icon: RotatedBox(
                                      quarterTurns: 1,
                                      child: getSvgIcon(
                                        // icon: Icons.arrow_drop_down,
                                        icon: 'next.svg',
                                        height: 30,
                                        color: getFontColor(context),
                                      ),
                                    ),
                                    value: settingController.selectedLanguage
                                        .value, // Use .value to access RxString value
                                    onChanged: (String? newValue) {
                                      settingController
                                          .onLanguageChange(newValue!);
                                    },
                                    items: <String>[
                                      'Arabic:ar',
                                      'Bengali:bn',
                                      'Chinese:zh',
                                      'English:en',
                                      'French:fr',
                                      'German:de',
                                      'Hindi:hi',
                                      'Japanese:ja',
                                      'Russian:ru',
                                      'Spanish:es',
                                    ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                        final parts = value.split(':');
                                        final language = parts[0];
                                        final code = parts[1];
                                        return DropdownMenuItem<String>(
                                          value: code,
                                          child: getText(language),
                                        );
                                      },
                                    ).toList(),
                                  );
                                }),
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),

                      getItem(
                        context: context,
                        function: () {
                          Get.toNamed(KeyUtil.reminderPage);
                        },
                        title: S.current.reminder,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          launchURL();
                        },
                        title: S.current.privacyPolicy,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          share();
                        },
                        title: S.current.share,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          showCommonDialog(
                              widget: RateViewDialog(), context: context);
                        },
                        title: S.current.rateUs,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          Get.toNamed(KeyUtil.feedbackPage);
                        },
                        title: S.current.feedback,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          developerLaunchURL();
                        },
                        title: S.current.contactDeveloper,
                      ),
                      getItem(
                        context: context,
                        function: () {
                          authController.signOut();
                          Get.to(Register());
                        },
                        title: 'Sign Out',
                      ),
                      // vertical height
                      5.verticalSpace,
                      BlocBuilder<AppInfoCubit, AppInfoState>(
                        builder: (context, state) {
                          if (state is AppInfoLoading) {
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          else if (state is AppInfoLoaded) {
                            return Container(
                              child: Center(
                                child: Column(
                                  children: [
                                    20.verticalSpaceFromWidth,
                                    Text("Cheetah Maths | Maths Tricks Pro"),
                                    5.verticalSpace,
                                    Text("Version ${state.version}    Build ${state.buildNumber}" ),
                                  ],
                                ),
                              ),
                            );
                          }
                          else if (state is AppVersionUpdated) {
                            return Container(
                              child: Center(
                                child: Text('App Version Updated: ${state.version}'),
                              ),
                            );
                          }
                          else if (state is BuildNumberUpdated) {
                            return Container(
                              child: Center(
                                child: Text('Build Number Updated: ${state.buildNumber}'),
                              ),
                            );
                          }
                          else {
                            return Container(
                              child: Center(
                                child: Text('App Info Not Loaded'),
                              ),
                            );
                          }
                          // return Container(
                          //   child: Center(
                          //     child: Text('$appVersion   $buildNumber'),
                          //   ),
                          // );
                        },
                      ),
                      20.verticalSpace
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          onBack();
          return false;
        });
  }

  getItem({
    required BuildContext context,
    required Function function,
    required String title,
  }) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h, right: horSpace, left: horSpace),
        height: 75.h,
        decoration: getDefaultDecoration(
            radius: 15.r,
            bgColor: themeController.isDarkTheme
                ? getCardColor(context)
                : getRandomColor(0).alphaColor),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            Expanded(
              child: getText(title),
              flex: 1,
            ),
            getSvgIcon(
                icon: 'next.svg', height: 30, color: getFontColor(context))
          ],
        ),
      ),
    );
  }

  getText(String title) {
    return getCustomFont(title, 15, getFontColor(context), 1,
        fontWeight: FontWeight.w600);
  }

  getSwitchItem({
    required BuildContext context,
    required Function function,
    required String title,
    required bool value,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h, right: horSpace, left: horSpace),
      height: 75.h,
      decoration: getDefaultDecoration(
          radius: 15.r,
          bgColor: themeController.isDarkTheme
              ? getCardColor(context)
              : getRandomColor(0).alphaColor),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        children: [
          Expanded(
            child: getText(title),
            flex: 1,
          ),
          Container(
            child: CupertinoSwitch(
              activeColor: tuple3.darkColor,
              value: value,
              onChanged: (bool v) {
                function(v);
              },
            ),
          ),
        ],
      ),
    );
  }
}
