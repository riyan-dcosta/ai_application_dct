import 'package:ai_application_dct/features/speech_to_text/presentation/pod/stt_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SSTArabToEngScreen extends ConsumerWidget {
  const SSTArabToEngScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arabic To English"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer(builder: (context, ref, _) {
          return Text(
            ref.watch(sttPodProvider),
          );
        },),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Consumer(builder: (context, ref, child) {
        return FloatingActionButton(
          onPressed: () async {
            if (await ref.read(sttProvider).hasPermission &&
                ref.read(sttProvider).isNotListening) {
              ref.read(sttPodProvider.notifier).startListening('en_IN');
            } else if (ref.read(sttProvider).isListening) {
              ref.read(sttPodProvider.notifier).stopListening();
            } else {
              ref.read(sttPodProvider.notifier).initializeStt();
            }
          },
          child: ref.watch(sttPodProvider) == 'Listening'
              ? Icon(Icons.stop)
              : Icon(Icons.mic),
        );
      },),
    );
  }
}
