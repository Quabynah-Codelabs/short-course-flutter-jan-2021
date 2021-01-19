// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArticleAdapter extends TypeAdapter<Article> {
  @override
  final int typeId = 2;

  @override
  Article read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Article(
      id: fields[0] as String,
      imageUrl: fields[1] as String,
      author: fields[2] as String,
      title: fields[3] as String,
      source: fields[6] as Source,
      publishedAt: fields[5] as String,
      desc: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Article obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.publishedAt)
      ..writeByte(6)
      ..write(obj.source);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SourceAdapter extends TypeAdapter<Source> {
  @override
  final int typeId = 3;

  @override
  Source read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Source(
      id: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Source obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['url']);
  return Article(
    id: json['url'] as String,
    imageUrl: json['urlToImage'] as String,
    author: json['author'] as String,
    title: json['title'] as String,
    source: json['source'] == null ? null : Source.fromJson(json['source']),
    publishedAt: json['publishedAt'] as String,
    desc: json['description'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'url': instance.id,
      'urlToImage': instance.imageUrl,
      'author': instance.author,
      'title': instance.title,
      'description': instance.desc,
      'publishedAt': instance.publishedAt,
      'source': instance.source,
    };

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
