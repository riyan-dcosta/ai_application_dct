import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/features/settings/presentation/pod/settings_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Consumer(builder: (_, ref, __) {
              final isDarkTheme = ref.watch(themeModeProvider);

              return SwitchListTile(
                title: Text("${isDarkTheme ? 'Disable' : 'Enable'} Dark Theme"),
                value: isDarkTheme,
                onChanged: (bool value) {
                  ref.read(themeModeProvider.notifier).toggleTheme(value);
                },
              );
            }),
            Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColor.deepOceanBlue,
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Radio(
                value: 'en',
                groupValue: ref.watch(l10nPodProvider).languageCode,
                onChanged: (localeId) {
                  ref.read(l10nPodProvider.notifier).toggleLocale(localeId!);
                },
              ),
              title: Text(AppLocalizations.of(context)!.english),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Radio(
                value: 'ar',
                groupValue: ref.watch(l10nPodProvider).languageCode,
                onChanged: (localeId) {
                  ref.read(l10nPodProvider.notifier).toggleLocale(localeId!);
                },
              ),
              title: Text(AppLocalizations.of(context)!.arabic),
            ),
          ],
        ),
      ),
    );
  }
}
