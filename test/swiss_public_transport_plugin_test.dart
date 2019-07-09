import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swiss_public_transport_plugin/swiss_public_transport_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('swiss_public_transport_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
