// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogPost _$BlogPostFromJson(Map<String, dynamic> json) {
  return BlogPost(
    key: json['key'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    publisher: json['publisher'] as String,
    timestamp: json['timestamp'] as String,
    category: json['category'] as String,
    reviews: json['reviews'] as int,
    comments: json['comments'] as int,
  );
}

Map<String, dynamic> _$BlogPostToJson(BlogPost instance) => <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'publisher': instance.publisher,
      'timestamp': instance.timestamp,
      'category': instance.category,
      'reviews': instance.reviews,
      'comments': instance.comments,
    };
