import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_properties/system_properties.dart';

void main() {
  const MethodChannel channel = MethodChannel('system_properties');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '23';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SystemProperties.getSystemProperties("ro.build.version.sdk"), '23');
  });
}
