import 'dart:async';

import 'package:flutter/services.dart';

class DoubleResult {
  static const MethodChannel _channel = const MethodChannel('double_result');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> avoid(Map map) async {
    return await _channel.invokeMethod('a', map);
  }

  static Future<String> bvoid(Map map) async {
    return await _channel.invokeMethod('b', map);
  }
}
