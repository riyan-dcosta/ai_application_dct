import 'package:ai_application_dct/features/method_channel/presentation/pod/method_channel_pod.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MethodChannelHomePage extends ConsumerWidget {
  const MethodChannelHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batteryLevel = ref.watch(batteryLevelProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Method Channel Kotlin"),
          flexibleSpace: Container(
            color: Colors.green,
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(batteryLevelProvider.notifier)
                      .getBatteryLevelFromAndroid();
                },
                child: Text("Battery level : $batteryLevel")),
            ElevatedButton(
                onPressed: () {
                  playAudioFromText();
                },
                child: Text("playAudioFromText"))
          ],
        ),
      ),
    );
  }
}
