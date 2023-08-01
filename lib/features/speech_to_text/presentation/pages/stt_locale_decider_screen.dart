import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/routes/go_router_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class STTLocaleDeciderPage extends StatelessWidget {
  const STTLocaleDeciderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            label: AppLocalizations.of(context)!.englishToArabic,
            height: 44,
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.symmetric(vertical: 4),
            width: 200,
            onPressed: () {
              SpeechToTextRoute(
                      appTitle: AppLocalizations.of(context)!.englishToArabic,
                      localeID: "ar_QA")
                  .go(context);
            },
          ),
          const SizedBox(height: 8),
          CustomButton(
            label: AppLocalizations.of(context)!.arabicToEnglish,
            height: 44,
            padding: const EdgeInsets.all(4),
            width: 200,
            onPressed: () {
              SpeechToTextRoute(
                      appTitle: AppLocalizations.of(context)!.arabicToEnglish,
                      localeID: "en_IN")
                  .go(context);
            },
          ),
        ],
      ),
    );
  }
}
