import 'dart:developer';

import 'package:ai_application_dct/features/speech_to_text/presentation/pod/stt_notifiers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'stt_pod.g.dart';

@riverpod
SpeechToText stt(SttRef ref) {
  return SpeechToText();
}

@riverpod
class SttPod extends _$SttPod {
  @override
  SttNotifiers build() {
    return const SttNotifiers.initial();
  }

  Future<void> startListening(String localeId) async {
    state = const SttNotifiers.listening();
    bool isPermitted = await ref.read(sttProvider).initialize();

    if (isPermitted) {
      await ref.read(sttProvider).listen(
            // listenFor: Duration(seconds: 2),
            // pauseFor: Duration(seconds: 10),
            onResult: _onSpeechResult,
            partialResults: false,
            listenMode: ListenMode.dictation,
            localeId: localeId,
          );
    } else {
      state = const SttNotifiers.permissionDenied();
      log("User didn't give permission", name: 'permission denied');
    }
  }

  Future<void> stopListening() async {
    state = const SttNotifiers.stopped();
    await ref.read(sttProvider).stop();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    state = SttNotifiers.success(speechText: result.recognizedWords);
  }
}
