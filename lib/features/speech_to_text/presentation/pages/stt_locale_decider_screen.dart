import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/routes/go_router_object.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class STTLocaleDeciderPage extends StatelessWidget {
  const STTLocaleDeciderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              label: "English to Arabic",
              height: 44,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.symmetric(vertical: 4),
              width: 200,
              onPressed: () {
                const SpeechToTextRoute(
                        appTitle: "English to Arabic", localeID: "ar_QA")
                    .go(context);
              }),
          const SizedBox(height: 8),
          CustomButton(
              label: "Arabic to English",
              height: 44,
              padding: const EdgeInsets.all(4),
              width: 200,
              onPressed: () {
                const SpeechToTextRoute(
                        appTitle: "Arabic to English", localeID: "en_IN")
                    .go(context);
              })
        ],
      ),
    );
  }
}
