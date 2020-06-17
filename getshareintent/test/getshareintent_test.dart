import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getshareintent/getshareintent.dart';

void main() {
  const MethodChannel channel = MethodChannel('getshareintent');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Getshareintent.platformVersion, '42');
  });
}
