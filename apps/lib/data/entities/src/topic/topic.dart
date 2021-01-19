import 'package:apps/domain/models/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'topic.g.dart';

/// implementation of [BaseTopic] class
@HiveType(typeId: 0)
@JsonSerializable()
class Topic extends BaseTopic {
  Topic({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
  });

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

  @override
  @HiveField(0)
  final String id;

  @override
  @HiveField(1)
  final String title;

  @override
  @HiveField(2)
  final String imageUrl;

  @override
  Map<String, dynamic> toJson() => _$TopicToJson(this);
}
