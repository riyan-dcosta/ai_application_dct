import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/settings/presentation/pod/settings_pod.dart';

void main() {
  runApp(const ProviderScope(child: MainPage()));
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: AutoRouterSingleton.routeConfig,
      title: 'AI Application DCTech',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: ref.watch(l10nPodProvider),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.accentColor,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColor.white,
          backgroundColor: AppColor.accentColor,
          titleTextStyle: TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
