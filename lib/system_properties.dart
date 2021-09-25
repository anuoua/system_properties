import 'dart:async';

import 'package:flutter/services.dart';

class SystemProperties {
  static const MethodChannel _channel = const MethodChannel('system_properties');

  static Future<String?> getSystemProperties(String key) async {
    final String? result = await _channel.invokeMethod('getSystemProperties', { "key": key });
    return result;
  }
}
