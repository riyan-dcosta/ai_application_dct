import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_screen.dart';

import 'package:flutter/material.dart';

@RoutePage()
class STTLocaleDeciderPage extends StatelessWidget {
  const STTLocaleDeciderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const STTScreen(
                    appBarTitle: "English to Arabic",
                    localeId: "ar_QA",
                  ),
                ),
              ),
              child: Text("English to Arabic"),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const STTScreen(
                    appBarTitle: "Arabic to English",
                    localeId: "en_IN",
                  ),
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
