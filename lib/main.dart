import 'package:ai_application_dct/core/config/routes/go_router.dart';
import 'package:ai_application_dct/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ai_application_dct/features/settings/presentation/pod/settings_pod.dart';
import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:ai_application_dct/core/constants/strings.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  // setUrlStrategy(PathUrlStrategy());
  runApp(const ProviderScope(child: MainPage()));
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: GoRouterObject.router,
      title: StaticStrings.applicationTitle,
      debugShowCheckedModeBanner: false,
      theme: ref.watch(appThemeProvider),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: ref.watch(l10nPodProvider).value,
    );
  }
}
