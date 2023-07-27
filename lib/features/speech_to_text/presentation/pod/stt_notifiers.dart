import 'package:freezed_annotation/freezed_annotation.dart';

part 'stt_notifiers.freezed.dart';

@freezed
class SttNotifiers with _$SttNotifiers {
  const factory SttNotifiers.initial() = _Initial;
  const factory SttNotifiers.permissionDenied() = _PermissionDenied;
  const factory SttNotifiers.listening() = _Listening;
  const factory SttNotifiers.stopped() = _Stopped;
  const factory SttNotifiers.success({required String speechText}) = _Success;
}
