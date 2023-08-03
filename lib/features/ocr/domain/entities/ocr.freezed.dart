// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Ocr {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OcrCopyWith<Ocr> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrCopyWith<$Res> {
  factory $OcrCopyWith(Ocr value, $Res Function(Ocr) then) =
      _$OcrCopyWithImpl<$Res, Ocr>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$OcrCopyWithImpl<$Res, $Val extends Ocr> implements $OcrCopyWith<$Res> {
  _$OcrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OcrCopyWith<$Res> implements $OcrCopyWith<$Res> {
  factory _$$_OcrCopyWith(_$_Ocr value, $Res Function(_$_Ocr) then) =
      __$$_OcrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_OcrCopyWithImpl<$Res> extends _$OcrCopyWithImpl<$Res, _$_Ocr>
    implements _$$_OcrCopyWith<$Res> {
  __$$_OcrCopyWithImpl(_$_Ocr _value, $Res Function(_$_Ocr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Ocr(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Ocr implements _Ocr {
  const _$_Ocr({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'Ocr(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ocr &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OcrCopyWith<_$_Ocr> get copyWith =>
      __$$_OcrCopyWithImpl<_$_Ocr>(this, _$identity);
}

abstract class _Ocr implements Ocr {
  const factory _Ocr({required final String name}) = _$_Ocr;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_OcrCopyWith<_$_Ocr> get copyWith => throw _privateConstructorUsedError;
}
