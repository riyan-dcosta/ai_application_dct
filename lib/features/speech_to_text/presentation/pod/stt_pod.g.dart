// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stt_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sttHash() => r'26255aad1aa6d6a273383c1d929b4c9879ef966a';

/// See also [stt].
@ProviderFor(stt)
final sttProvider = AutoDisposeProvider<SpeechToText>.internal(
  stt,
  name: r'sttProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sttHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SttRef = AutoDisposeProviderRef<SpeechToText>;
String _$sttPodHash() => r'734762deae313f3001c976b762760899fcb2dc18';

/// See also [SttPod].
@ProviderFor(SttPod)
final sttPodProvider =
    AutoDisposeNotifierProvider<SttPod, SttNotifiers>.internal(
  SttPod.new,
  name: r'sttPodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sttPodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SttPod = AutoDisposeNotifier<SttNotifiers>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
