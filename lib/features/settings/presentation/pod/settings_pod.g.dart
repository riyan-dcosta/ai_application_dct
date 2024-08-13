// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isDarkThemeSetHash() => r'ee3be644572674bc323fefcfa923849da74df97d';

/// See also [isDarkThemeSet].
@ProviderFor(isDarkThemeSet)
final isDarkThemeSetProvider = AutoDisposeProvider<bool>.internal(
  isDarkThemeSet,
  name: r'isDarkThemeSetProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isDarkThemeSetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsDarkThemeSetRef = AutoDisposeProviderRef<bool>;
String _$l10nPodHash() => r'8d5024d5588e3a48485a8ea53529d4ab3b39b468';

/// See also [L10nPod].
@ProviderFor(L10nPod)
final l10nPodProvider =
    AutoDisposeAsyncNotifierProvider<L10nPod, Locale>.internal(
  L10nPod.new,
  name: r'l10nPodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$l10nPodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$L10nPod = AutoDisposeAsyncNotifier<Locale>;
String _$themePodHash() => r'b17b557856dfb9da70b574086129d76422853db0';

/// See also [ThemePod].
@ProviderFor(ThemePod)
final themePodProvider =
    AutoDisposeNotifierProvider<ThemePod, ThemeData>.internal(
  ThemePod.new,
  name: r'themePodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themePodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemePod = AutoDisposeNotifier<ThemeData>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
