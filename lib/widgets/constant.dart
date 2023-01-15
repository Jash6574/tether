import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AppUrl {
  static String shareUrl() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return shareLinkAndroid;
    } else {
      return shareLinkIOS;
    }
  }
}

const shareLinkIOS = "https://itunes.apple.com/us/app/id1503542105";
const shareLinkAndroid = "https://itunes.apple.com/us/app/id1503542105";
