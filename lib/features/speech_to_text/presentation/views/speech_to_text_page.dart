import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

// import 'package:ai_application_dct/features/speech_to_text/domain/repositories/speech_to_text_domain_repo.dart';

@RoutePage()
class SpeechToTextPage extends StatefulWidget {
  const SpeechToTextPage({super.key});

  @override
  State<SpeechToTextPage> createState() => _SpeechToTextPageState();
}

class _SpeechToTextPageState extends State<SpeechToTextPage> {
  final ttsController = TextEditingController();
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String arabicLocale = 'en-US';

  // convertedTextFromSpeech

  @override
  void initState() {
    super.initState();
    getLocales();
  }

  void resultListener(SpeechRecognitionResult result) {}

  getLocales() async {
    await _speechToText.initialize();
    var locales = await _speechToText.locales();
    print("locales : ${locales.map((e) => (e.localeId, e.name))}");
  }

  @override
  void dispose() {
    _speechToText.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speech to Text"),
      ),
      body: Column(
        children: [
          TextField(
            controller: ttsController,
          ),
          Text("Output : $_lastWords"),
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: _speechEnabled ? Colors.green : Colors.red,
            shape: BoxShape.circle),
        child: GestureDetector(
          onTap: () async{
            print("speech $_speechEnabled");
            if (_speechEnabled) {
              await _speechToText.stop();
              _speechEnabled = false;
            } else {
              _speechEnabled = true;
              setState(() {

              });
              await _speechToText.listen(
                listenFor: Duration(seconds: 10),
                onResult: (result) {
                  _lastWords = result.toString();
                  _speechEnabled = false;

                  setState(() {});
                  print(result.toString());
                  print("print");
                },
                localeId: arabicLocale,
              );
            }

            print("onTap");
            setState(() {});
          },
          child: Icon(Icons.mic),
        ),
      ),
    );
  }
}
