import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

AdRequest request = AdRequest(
  keywords: <String>['foo', 'bar'],
  contentUrl: 'http://foo.com/bar.html',
  nonPersonalizedAds: true,
);

String getInterstitialAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-6812505161150117/8751506761';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-6812505161150117/8751506761';
  }
  return "";
}

String getRewardBasedVideoAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-6812505161150117/7587379153';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-6812505161150117/7587379153';
  }
  return "";
}

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-6812505161150117/9399154279';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-6812505161150117/9399154279';
  }
  return "";
}
