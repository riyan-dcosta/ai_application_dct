import 'package:ai_application_dct/features/speech_to_text/presentation/pod/stt_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SSTEngToArabScreen extends StatelessWidget {
  const SSTEngToArabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English To Arabic"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, _) {
                return Text(
                  ref.watch(sttPodProvider),
                );
              },
            ),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () async {
            //     var locales = await _speechToText.locales();
            //     var localeNames = <String>[];
            //     locales.forEach((element) {
            //       // log(element.name);
            //       if (element.name == 'Arabic (Qatar)') {
            //         log(element.localeId, name: 'Id Arab');
            //       } else if (element.name == 'English (India)') {
            //         log(element.localeId, name: 'Id Eng');
            //       }
            //     });
            //   },
            //   child: Text("get locales"),
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Consumer(builder: (context, ref, child) {
        return FloatingActionButton(
            onPressed: () async {
              if (await ref.read(sttProvider).hasPermission &&
                  ref.read(sttProvider).isNotListening) {
                ref.read(sttPodProvider.notifier).startListening('ar_QA');
              } else if (ref.read(sttProvider).isListening) {
                ref.read(sttPodProvider.notifier).stopListening();
              } else {
                ref.read(sttPodProvider.notifier).initializeStt();
              }
            },
            child: ref.watch(sttPodProvider) == 'Listening'
                ? Icon(Icons.stop)
                : Icon(Icons.mic));
      }),
    );
  }
}
