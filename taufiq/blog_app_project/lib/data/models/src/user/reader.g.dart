// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reader _$ReaderFromJson(Map<String, dynamic> json) {
  return Reader(
    key: json['key'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String?,
  );
}

Map<String, dynamic> _$ReaderToJson(Reader instance) => <String, dynamic>{
      'key': instance.key,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
    };
