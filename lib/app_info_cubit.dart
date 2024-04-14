import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class AppInfoCubit extends Cubit<AppInfoState> {
  AppInfoCubit() : super(AppInfoInitial());

  void fetchAppInfo() async {
    emit(AppInfoLoading());

    SharedPreferences prefs = await SharedPreferences.getInstance();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    final currentVersionNumber = packageInfo.version;
    final currentBuildNumber = packageInfo.buildNumber;

    // Check if version number and build number are already stored in SharedPreferences
    String? storedVersion = prefs.getString('appVersion');
    String? storedBuild = prefs.getString('buildNumber');

    if (storedVersion == null || storedVersion != currentVersionNumber) {
      // Store the current version number in SharedPreferences
      await prefs.setString('appVersion', currentVersionNumber);
      emit(AppVersionUpdated(currentVersionNumber));
    }

    if (storedBuild == null || storedBuild != currentBuildNumber) {
      // Store the current build number in SharedPreferences
      await prefs.setString('buildNumber', currentBuildNumber);
      emit(BuildNumberUpdated(currentBuildNumber));
    }

    emit(AppInfoLoaded(version: currentVersionNumber, buildNumber: currentBuildNumber));
    debugPrint('AppInfoLoaded: $currentVersionNumber, $currentBuildNumber');
  }
}

abstract class AppInfoState {}

class AppInfoInitial extends AppInfoState {}

class AppInfoLoading extends AppInfoState {}

class AppInfoLoaded extends AppInfoState {
  final String version;
  final String buildNumber;

  AppInfoLoaded({required this.version, required this.buildNumber});


}

class AppVersionUpdated extends AppInfoState {
  final String version;

  AppVersionUpdated(this.version);
}

class BuildNumberUpdated extends AppInfoState {
  final String buildNumber;

  BuildNumberUpdated(this.buildNumber);
}
