// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      userID: json['id'] as String,
      name: json['name'] as String? ?? 'N/A',
      age: json['age'] as int? ?? -1,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.userID,
      'name': instance.name,
      'age': instance.age,
    };
