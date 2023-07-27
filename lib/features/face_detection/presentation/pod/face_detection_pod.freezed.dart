// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_detection_pod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraInformation {
  Future<String> get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraInformationCopyWith<CameraInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraInformationCopyWith<$Res> {
  factory $CameraInformationCopyWith(
          CameraInformation value, $Res Function(CameraInformation) then) =
      _$CameraInformationCopyWithImpl<$Res, CameraInformation>;
  @useResult
  $Res call({Future<String> path});
}

/// @nodoc
class _$CameraInformationCopyWithImpl<$Res, $Val extends CameraInformation>
    implements $CameraInformationCopyWith<$Res> {
  _$CameraInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Future<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraInformationCopyWith<$Res>
    implements $CameraInformationCopyWith<$Res> {
  factory _$$_CameraInformationCopyWith(_$_CameraInformation value,
          $Res Function(_$_CameraInformation) then) =
      __$$_CameraInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Future<String> path});
}

/// @nodoc
class __$$_CameraInformationCopyWithImpl<$Res>
    extends _$CameraInformationCopyWithImpl<$Res, _$_CameraInformation>
    implements _$$_CameraInformationCopyWith<$Res> {
  __$$_CameraInformationCopyWithImpl(
      _$_CameraInformation _value, $Res Function(_$_CameraInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_CameraInformation(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Future<String>,
    ));
  }
}

/// @nodoc

class _$_CameraInformation implements _CameraInformation {
  const _$_CameraInformation({required this.path});

  @override
  final Future<String> path;

  @override
  String toString() {
    return 'CameraInformation(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraInformation &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraInformationCopyWith<_$_CameraInformation> get copyWith =>
      __$$_CameraInformationCopyWithImpl<_$_CameraInformation>(
          this, _$identity);
}

abstract class _CameraInformation implements CameraInformation {
  const factory _CameraInformation({required final Future<String> path}) =
      _$_CameraInformation;

  @override
  Future<String> get path;
  @override
  @JsonKey(ignore: true)
  _$$_CameraInformationCopyWith<_$_CameraInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
