import 'package:ai_application_dct/core/common/widgets/custom_button.dart';

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
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.symmetric(vertical: 4),
              width: 200,
              onPressed: () {
                context.go(Uri(path: "/english_to_arabic", queryParameters: {
                  'appTitle': "English to Arabic",
                  'localeID': "ar_QA"
                }).toString());
                // context.router.push(
                // STTRoute(
                //   appBarTitle: "English to Arabic",
                //   localeId: "ar_QA",
                // ),
                // );
              }),
          SizedBox(height: 8),
          CustomButton(
              label: "Arabic to English",
              height: 44,
              padding: EdgeInsets.all(4),
              width: 200,
              onPressed: () {
                context.goNamed(
                    '/arabic_to_english/${"Arabic to English"},${"en_IN"}');
                // context.router.push(
                // STTRoute(
                //   appBarTitle: "Arabic to English",
                //   localeId: "en_IN",
                // ),
              })
        ],
      ),
    );
  }
}
