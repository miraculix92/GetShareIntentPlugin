library shareintentinterface;

import 'dart:async';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:getshareintent_platforminterface/GetShareIntentMethodChannel.dart';

abstract class GetShareIntentPlatformInterface extends PlatformInterface {
  GetShareIntentPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static GetShareIntentPlatformInterface _instance = GetShareIntentMethodChannel();

  static GetShareIntentPlatformInterface get instance => _instance;

  static set instance(GetShareIntentPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  // Returns a stream of shared links to listen to. Bloc.
  Stream<String> get onShareIntentReceived {
    throw UnimplementedError('get onShareIntentReceived has not been implemented');
  }

  Future<String> getShareIntent() {
    throw UnimplementedError('getShareIntent() has not been implemented');
  }
}
