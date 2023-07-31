import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
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
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.symmetric(vertical: 4),
            width: 200,
            onPressed: () => context.router.push(
              STTRoute(
                appBarTitle: AppLocalizations.of(context)!.englishToArabic,
                localeId: "ar_QA",
              ),
            ),
          ),
          SizedBox(height: 8),
          CustomButton(
            label: AppLocalizations.of(context)!.arabicToEnglish,
            height: 44,
            padding: EdgeInsets.all(4),
            width: 200,
            onPressed: () => context.router.push(
              STTRoute(
                appBarTitle: AppLocalizations.of(context)!.arabicToEnglish,
                localeId: "en_IN",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
