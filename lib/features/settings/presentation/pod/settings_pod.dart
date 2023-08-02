import 'package:ai_application_dct/core/util/pref_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_pod.g.dart';

@riverpod
class L10nPod extends _$L10nPod {
  @override
  Future<Locale> build() async {
    final localeId = Pref.instance.getLocaleId();
    return Locale(localeId);
  }

  Future<void> toggleLocale(String localeId) async {
    Pref.instance.setLocaleId(localeId);

    state = AsyncData(Locale(localeId));
  }
}
