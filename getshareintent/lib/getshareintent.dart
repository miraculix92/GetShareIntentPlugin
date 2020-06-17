import 'dart:async';
import 'package:getshareintent_plaftorminterface/PlatformInterface.dart';

class ShareIntent {

  factory ShareIntent() {
    if (_singleton == null) {
      _singleton = ShareIntent._();
    }
    return _singleton;
  }

  ShareIntent._();

  static ShareIntent _singleton;

  static PlatformInterface get _platform => PlatformInterface.instance;

  Stream<String> get onShareIntent {
    return _platform.onShareIntentReceived;
  }

  Future<String> getShareIntent() {
    return _platform.getShareIntent();
  }
}