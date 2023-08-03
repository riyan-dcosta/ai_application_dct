// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_access_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTextControllerHash() => r'6e36cb44bb0313039c3ef533f90ca1b5524221e8';

/// See also [getTextController].
@ProviderFor(getTextController)
final getTextControllerProvider = AutoDisposeProvider<String>.internal(
  getTextController,
  name: r'getTextControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getTextControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTextControllerRef = AutoDisposeProviderRef<String>;
String _$userRequestHash() => r'33447066ac25b07381a18f386241af3741b792f0';

/// See also [UserRequest].
@ProviderFor(UserRequest)
final userRequestProvider =
    AutoDisposeAsyncNotifierProvider<UserRequest, User>.internal(
  UserRequest.new,
  name: r'userRequestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserRequest = AutoDisposeAsyncNotifier<User>;
String _$usersRequestHash() => r'0c17513f703d58fbe79d27c0d730a4b6a6d7e6f6';

/// See also [UsersRequest].
@ProviderFor(UsersRequest)
final usersRequestProvider =
    AutoDisposeAsyncNotifierProvider<UsersRequest, List<User>>.internal(
  UsersRequest.new,
  name: r'usersRequestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UsersRequest = AutoDisposeAsyncNotifier<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
