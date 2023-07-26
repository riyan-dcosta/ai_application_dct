import 'package:flutter/services.dart';

class KotlinNativeChannel {
  static const platform = MethodChannel('com.api_application_dct.dev/kotlin');
  static const getBatteryLevel = 'getBatteryLevel';
}
