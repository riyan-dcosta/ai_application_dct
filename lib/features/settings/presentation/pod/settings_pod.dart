import 'package:ai_application_dct/core/util/pref_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_pod.g.dart';

@riverpod
class L10nPod extends _$L10nPod {
  @override
  Locale build() {
    final localeId = Pref.instance.getLocaleId();
    return Locale(localeId);
  }

  void toggleLocale(String localeId) {
    Pref.instance.setLocaleId(localeId);

    state = Locale(localeId);
  }
}

@Riverpod(keepAlive: true)
class ThemeMode extends _$ThemeMode {
  @override
  bool build() {
    final isDarkTheme = Pref.instance.isDarkTheme();
    return isDarkTheme;
  }

  void toggleTheme(bool isDark) {
    Pref.instance.setThemeMode(isDark);

    state = isDark;
  }
}
