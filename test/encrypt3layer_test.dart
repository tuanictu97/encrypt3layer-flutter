import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:encrypt3layer/encrypt3layer.dart';

void main() {
  const MethodChannel channel = MethodChannel('encrypt3layer');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Encrypt3layer.platformVersion, '42');
  });
}
