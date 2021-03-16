// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Editor _$EditorFromJson(Map<String, dynamic> json) {
  return Editor(
    key: json['key'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String?,
  );
}

Map<String, dynamic> _$EditorToJson(Editor instance) => <String, dynamic>{
      'key': instance.key,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
    };
