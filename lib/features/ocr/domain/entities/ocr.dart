import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr.freezed.dart';

@freezed
class Ocr with _$Ocr {
  const factory Ocr({
    required String name,
  }) = _Ocr;
}
