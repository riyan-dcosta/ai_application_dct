import 'dart:async';

import 'package:ai_application_dct/core/native_channel/kotlin_native/kotlin_native_channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'method_channel_pod.g.dart';

@riverpod
class BatteryLevel extends _$BatteryLevel {
  @override
  int build() {
    return -1;
  }

  void getBatteryLevelFromAndroid() async {
    int batteryLevel = -1;
    try {
      batteryLevel = await KotlinNativeChannel.platform
          .invokeMethod(KotlinNativeChannel.getBatteryLevel);
    } catch (e) {
      print(e);
    }
    state = batteryLevel;
  }
}
