import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SSTEngToArabScreen extends StatefulWidget {
  const SSTEngToArabScreen({super.key});

  @override
  State<SSTEngToArabScreen> createState() => _SSTEngToArabScreenState();
}

class _SSTEngToArabScreenState extends State<SSTEngToArabScreen> {
  late final SpeechToText _speechToText;

  String _lastWords = "";
  String _prevWords = "";

  @override
  void initState() {
    super.initState();

    _speechToText = SpeechToText();
    _initSpeech();
  }

  Future<void> _initSpeech() async {
    await _speechToText.initialize();
  }

  Future<void> _startListening() async {
    await _speechToText.listen(
      onResult: _onSpeechResult,
      partialResults: false,
      listenMode: ListenMode.dictation,
      localeId: 'ar_QA',
    );
    setState(() {});
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
    log(_lastWords);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English To Arabic"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(_lastWords),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var locales = await _speechToText.locales();
                var localeNames = <String>[];
                locales.forEach((element) {
                  // log(element.name);
                  if (element.name == 'Arabic (Qatar)') {
                    log(element.localeId, name: 'Id Arab');
                  } else if (element.name == 'English (India)') {
                    log(element.localeId, name: 'Id Eng');
                  }
                });
                // log(localeNames.toString());
              },
              child: Text("get locales"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (await _speechToText.hasPermission &&
              _speechToText.isNotListening) {
            await _startListening();
          } else if (_speechToText.isListening) {
            await _stopListening();
          } else {
            _initSpeech();
          }
        },
        child: Icon(Icons.mic),
      ),
    );
  }
}
