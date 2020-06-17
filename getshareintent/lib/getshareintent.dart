import 'dart:async';
import 'package:getshareintent_platforminterface/GetShareIntentPlatformInterface.dart';

class ShareIntent {

  factory ShareIntent() {
    if (_singleton == null) {
      _singleton = ShareIntent._();
    }
    return _singleton;
  }

  ShareIntent._();

  static ShareIntent _singleton;

  static GetShareIntentPlatformInterface get _platform => GetShareIntentPlatformInterface.instance;

  Stream<String> get onShareIntent {
    return _platform.onShareIntentReceived;
  }

  Future<String> getShareIntent() {
    return _platform.getShareIntent();
  }
}