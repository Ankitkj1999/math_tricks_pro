import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

void checkAppVersion(BuildContext context) async {
  var logger = Logger();
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  final currentVersionNumber = packageInfo.version;

  logger.d("Current Version Number: $currentVersionNumber");

  final currentBuildNumber = packageInfo.buildNumber;
  logger.d("Current Build Number: $currentBuildNumber");

  final buildNo = int.parse(packageInfo.buildNumber);
  logger.d("Current Build Number: $buildNo");

  // remote config
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 12),
  ));

  await remoteConfig.fetch();
  await remoteConfig.fetchAndActivate();

  // final versionToSet = remoteConfig.getString('versionToSet');
  // logger.d("Version to set: $versionToSet");

    final buildNoToSet = int.parse(remoteConfig.getString('buildNoToSet'));
    logger.d("Build No to set: $buildNoToSet");

  if (buildNoToSet > buildNo) {
    logger.d("Build to set: $buildNoToSet");
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(

          title: Row(
            children: [
              Icon(Icons.info, color: Colors.red),
              SizedBox(width: 10),
              Text('New Version Available'),
            ],
          ),
          content: Text('This is a mandatory system update!\nPlease update to the latest version to continue.'),
          actions: [

            TextButton(
              onPressed: () {
                launchUrlHere('https://play.google.com/store/apps/details?id=com.cheetah.math.trick.pro');
                Navigator.of(context).pop(); // close dialog
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('Update Now', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),

            ),),
            ),
          ],
        );
      },
    );
  }
}

Future<void> launchUrlHere(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
