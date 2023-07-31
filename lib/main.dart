import 'package:ai_application_dct/core/config/routes/router_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/config/theme.dart';
import 'core/constants/strings.dart';

void main() {
  runApp(const ProviderScope(child: MainPage()));
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: RouterObject.routeConfig,
      title: StaticStrings.applicationTitle,
      debugShowCheckedModeBanner: false,
      theme: ref.watch(appThemeProvider),
    );
  }
}
