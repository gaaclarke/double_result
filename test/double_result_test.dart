import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:double_result/double_result.dart';

void main() {
  const MethodChannel channel = MethodChannel('double_result');

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
    expect(await DoubleResult.platformVersion, '42');
  });
}
