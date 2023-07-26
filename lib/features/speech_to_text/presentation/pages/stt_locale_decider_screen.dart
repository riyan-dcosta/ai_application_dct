import 'dart:developer';

import 'package:ai_application_dct/features/speech_to_text/presentation/pages/sst_arab_to_eng_screen.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/sst_eng_to_arab_screen.dart';
import 'package:flutter/material.dart';

class STTLocaleDeciderScreen extends StatelessWidget {
  const STTLocaleDeciderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SSTEngToArabScreen(),
                ),
              ),
              child: Text("English to Arabic"),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SSTArabToEngScreen(),
                ),
              ),
              child: Text("Arabic to English"),
            ),
          ],
        ),
      ),
    );
  }
}