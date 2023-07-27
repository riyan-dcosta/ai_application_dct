import 'dart:async';

import 'package:ai_application_dct/core/native_channel/kotlin_native/kotlin_native_channel.dart';
import 'package:ai_application_dct/core/native_channel/native_channel_p.dart';
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

Future<bool> playAudioFromText() async {
  try {
    ExampleHostApi().sendMessage(
        MessageData(code: Code.one, data: {'data': 'hello world'}));
  } catch (e) {
    print(e);
  }
  return Future<bool>(() => false);
  try {
    bool success = await KotlinNativeChannel.platform
        .invokeMethod(KotlinNativeChannel.playAudioFromText);
    print(success);
  } catch (e) {
    print(e);
  }
}
