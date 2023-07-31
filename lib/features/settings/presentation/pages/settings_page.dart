import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final themeProviderObj = ref.read(appThemeProvider.notifier);
              final isDarkTheme = ref.watch(isDarkThemeSetProvider);
              return SwitchListTile(
                  title:
                      Text("${isDarkTheme ? 'Disable' : 'Enable'} Dark Theme"),
                  value: isDarkTheme,
                  onChanged: (bool value) {
                    themeProviderObj.setTheme(toDark: value);
                  });
            },
          )
        ],
      ),
    );
  }
}
