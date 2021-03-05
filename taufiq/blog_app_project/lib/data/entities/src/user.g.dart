// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blogger _$BloggerFromJson(Map<String, dynamic> json) {
  return Blogger(
    firstName: json['firstName'] as String,
    key: json['key'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String?,
  );
}

Map<String, dynamic> _$BloggerToJson(Blogger instance) => <String, dynamic>{
      'key': instance.key,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
    };
