// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogger.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloggerAdapter extends TypeAdapter<Blogger> {
  @override
  final int typeId = 1;

  @override
  Blogger read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Blogger(
      id: fields[0] as String,
      email: fields[3] as String,
      username: fields[1] as String,
      createdAt: fields[2] as String,
      avatar: fields[4] as String,
      topics: (fields[5] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Blogger obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.avatar)
      ..writeByte(5)
      ..write(obj.topics);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloggerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blogger _$BloggerFromJson(Map<String, dynamic> json) {
  return Blogger(
    id: json['id'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
    createdAt: json['createdAt'] as String,
    avatar: json['avatar'] as String,
    topics: (json['topics'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$BloggerToJson(Blogger instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'createdAt': instance.createdAt,
      'email': instance.email,
      'avatar': instance.avatar,
      'topics': instance.topics,
    };
