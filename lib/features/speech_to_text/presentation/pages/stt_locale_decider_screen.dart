import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

@RoutePage()
class STTLocaleDeciderPage extends StatelessWidget {
  const STTLocaleDeciderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.router.push(
              STTRoute(
                appBarTitle: "English to Arabic",
                localeId: "ar_QA",
              ),
            ),
            child: Text("English to Arabic"),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => context.router.push(
              STTRoute(
                appBarTitle: "Arabic to English",
                localeId: "en_IN",
              ),
            ),
            child: Text("Arabic to English"),
          ),
        ],
      ),
    );
  }
}
