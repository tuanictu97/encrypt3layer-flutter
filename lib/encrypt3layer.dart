import 'dart:async';

import 'package:flutter/services.dart';

class Encrypt3layer {
  static const MethodChannel _channel =
      const MethodChannel('encrypt3layer');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
