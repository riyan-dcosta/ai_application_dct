import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:ai_application_dct/core/util/pref_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_pod.g.dart';

@riverpod
class L10nPod extends _$L10nPod {
  @override
  Future<Locale> build() async {
    final pref = await Pref.getInstance();
    final localeId = pref.getLocaleId();

    return Locale(localeId);
  }

  Future<void> toggleLocale(String localeId) async {
    Pref.getInstance().then((pref) => pref.setLocaleId(localeId));

    state = AsyncData(Locale(localeId));
  }
}

@riverpod
class ThemePod extends _$ThemePod {
  @override
  ThemeData build() {
    // final pref = await Pref.getInstance();
    // return pref.isDarkTheme() ? _darkTheme : _lightTheme;
    return _lightTheme;
  }

  final _darkTheme = AppTheme.darkTheme;
  final _lightTheme = AppTheme.lightTheme;

  void setDarkTheme() {
    state = _darkTheme;
  }

  void setLightTheme() {
    state = _lightTheme;
  }

  ThemeData getLightTheme() {
    return _lightTheme;
  }

  ThemeData getDarkTheme() {
    return _darkTheme;
  }

  void setTheme({required bool toDark}) {
    // Pref.getInstance().then((pref) => pref.setDarkTheme(isDark: toDark));
    if (toDark) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}

@riverpod
bool isDarkThemeSet(IsDarkThemeSetRef ref) {
  final darkTheme = ref.read(themePodProvider.notifier).getDarkTheme();
  return darkTheme == ref.watch(themePodProvider);
}
