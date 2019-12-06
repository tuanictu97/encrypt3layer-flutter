import 'dart:async';
import 'dart:ffi';  // For FFI
import 'dart:io';   // For Platform.isX


import 'package:flutter/services.dart';


// test native for Android
final DynamicLibrary nativeAddLib = DynamicLibrary.open("libnative_add.so");

//final DynamicLibrary nativeAddLib = Platform.isAndroid
//    ? DynamicLibrary.open("libnative_add.so")
//    : DynamicLibrary.process();

final int Function(int x, int y) nativeAdd =
nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();


class Encrypt3layer {
  static const MethodChannel _channel =
      const MethodChannel('encrypt3layer');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
