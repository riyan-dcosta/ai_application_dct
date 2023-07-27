// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stt_notifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SttNotifiers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SttNotifiersCopyWith<$Res> {
  factory $SttNotifiersCopyWith(
          SttNotifiers value, $Res Function(SttNotifiers) then) =
      _$SttNotifiersCopyWithImpl<$Res, SttNotifiers>;
}

/// @nodoc
class _$SttNotifiersCopyWithImpl<$Res, $Val extends SttNotifiers>
    implements $SttNotifiersCopyWith<$Res> {
  _$SttNotifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SttNotifiersCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SttNotifiers.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SttNotifiers {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PermissionDeniedCopyWith<$Res> {
  factory _$$_PermissionDeniedCopyWith(
          _$_PermissionDenied value, $Res Function(_$_PermissionDenied) then) =
      __$$_PermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PermissionDeniedCopyWithImpl<$Res>
    extends _$SttNotifiersCopyWithImpl<$Res, _$_PermissionDenied>
    implements _$$_PermissionDeniedCopyWith<$Res> {
  __$$_PermissionDeniedCopyWithImpl(
      _$_PermissionDenied _value, $Res Function(_$_PermissionDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PermissionDenied implements _PermissionDenied {
  const _$_PermissionDenied();

  @override
  String toString() {
    return 'SttNotifiers.permissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements SttNotifiers {
  const factory _PermissionDenied() = _$_PermissionDenied;
}

/// @nodoc
abstract class _$$_ListeningCopyWith<$Res> {
  factory _$$_ListeningCopyWith(
          _$_Listening value, $Res Function(_$_Listening) then) =
      __$$_ListeningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListeningCopyWithImpl<$Res>
    extends _$SttNotifiersCopyWithImpl<$Res, _$_Listening>
    implements _$$_ListeningCopyWith<$Res> {
  __$$_ListeningCopyWithImpl(
      _$_Listening _value, $Res Function(_$_Listening) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Listening implements _Listening {
  const _$_Listening();

  @override
  String toString() {
    return 'SttNotifiers.listening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Listening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) {
    return listening();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) {
    return listening?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) {
    return listening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) {
    return listening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(this);
    }
    return orElse();
  }
}

abstract class _Listening implements SttNotifiers {
  const factory _Listening() = _$_Listening;
}

/// @nodoc
abstract class _$$_StoppedCopyWith<$Res> {
  factory _$$_StoppedCopyWith(
          _$_Stopped value, $Res Function(_$_Stopped) then) =
      __$$_StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoppedCopyWithImpl<$Res>
    extends _$SttNotifiersCopyWithImpl<$Res, _$_Stopped>
    implements _$$_StoppedCopyWith<$Res> {
  __$$_StoppedCopyWithImpl(_$_Stopped _value, $Res Function(_$_Stopped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stopped implements _Stopped {
  const _$_Stopped();

  @override
  String toString() {
    return 'SttNotifiers.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements SttNotifiers {
  const factory _Stopped() = _$_Stopped;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String speechText});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SttNotifiersCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechText = null,
  }) {
    return _then(_$_Success(
      speechText: null == speechText
          ? _value.speechText
          : speechText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.speechText});

  @override
  final String speechText;

  @override
  String toString() {
    return 'SttNotifiers.success(speechText: $speechText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.speechText, speechText) ||
                other.speechText == speechText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speechText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionDenied,
    required TResult Function() listening,
    required TResult Function() stopped,
    required TResult Function(String speechText) success,
  }) {
    return success(speechText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionDenied,
    TResult? Function()? listening,
    TResult? Function()? stopped,
    TResult? Function(String speechText)? success,
  }) {
    return success?.call(speechText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionDenied,
    TResult Function()? listening,
    TResult Function()? stopped,
    TResult Function(String speechText)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(speechText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Listening value) listening,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Listening value)? listening,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Listening value)? listening,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SttNotifiers {
  const factory _Success({required final String speechText}) = _$_Success;

  String get speechText;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
