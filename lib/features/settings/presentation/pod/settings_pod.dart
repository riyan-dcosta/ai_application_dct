import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_pod.g.dart';

@riverpod
class L10nPod extends _$L10nPod {
  @override
  Locale build() {
    return const Locale('en');
  }

  void toggleLocale(String localeId) {
    state = Locale(localeId);
  }
}
