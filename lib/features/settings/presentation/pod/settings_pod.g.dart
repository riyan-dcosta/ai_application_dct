// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$l10nPodHash() => r'9e54bfe40993d2bba33a914e1bbff5aa90cd46cb';

/// See also [L10nPod].
@ProviderFor(L10nPod)
final l10nPodProvider = AutoDisposeNotifierProvider<L10nPod, Locale>.internal(
  L10nPod.new,
  name: r'l10nPodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$l10nPodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$L10nPod = AutoDisposeNotifier<Locale>;
String _$themeModeHash() => r'e4f233b49b7bab910aca4fba2b8612b55a3f841f';

/// See also [ThemeMode].
@ProviderFor(ThemeMode)
final themeModeProvider = NotifierProvider<ThemeMode, bool>.internal(
  ThemeMode.new,
  name: r'themeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeMode = Notifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
