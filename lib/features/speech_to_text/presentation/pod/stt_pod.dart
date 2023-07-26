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
  String build() {
    return "";
  }

  Future<void> initializeStt() async {
    ref.read(sttProvider).initialize();
  }

  Future<void> startListening(String localeId) async {
    state = 'Listening';
    await ref.read(sttProvider).initialize();
    await ref.read(sttProvider).listen(
          onResult: _onSpeechResult,
          partialResults: false,
          listenMode: ListenMode.dictation,
          localeId: localeId,
        );
  }

  Future<void> stopListening() async {
    state = '';
    await ref.read(sttProvider).stop();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    state = result.recognizedWords;
  }
}
