import 'dart:async';
import 'package:flutter/services.dart';
import 'package:getshareintent_platforminterface/GetShareIntentPlatformInterface.dart';

// The method channel to interact with the native platform.
const MethodChannel _channel = MethodChannel('plugins.flutter.io/getshareintent');

// The event channel to receive shared link changes / new shared links.
EventChannel eventChannel = EventChannel('plugins.flutter.io/getshareintent_status');

Stream<String> _onLinkShare;

class GetShareIntentMethodChannel extends GetShareIntentPlatformInterface {

  @override
  Stream<String> get onShareIntentReceived {
    if (_onLinkShare == null) {
      _onLinkShare = eventChannel
          .receiveBroadcastStream()
          .map((dynamic result) => result.toString());
    }
    return _onLinkShare;
  }

  @override
  Future<String> getShareIntent() async {
    return await _channel.invokeMethod<String>('getShareIntent');
  }
}
