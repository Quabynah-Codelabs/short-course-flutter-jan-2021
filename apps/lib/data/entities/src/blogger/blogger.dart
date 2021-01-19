import 'package:apps/domain/models/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'blogger.g.dart';

/// implementation of [BaseBlogger] class
@HiveType(typeId: 1)
@JsonSerializable()
class Blogger extends BaseBlogger {
  Blogger({
    @required this.id,
    @required this.email,
    @required this.username,
    this.createdAt,
    this.avatar,
    this.topics = const <String>[],
  });

  factory Blogger.fromJson(Map<String, dynamic> json) =>
      _$BloggerFromJson(json);

  @HiveField(0)
  @override
  final String id;

  @HiveField(1)
  @override
  final String username;

  @HiveField(2)
  @override
  final String createdAt;

  @HiveField(3)
  @override
  final String email;

  @HiveField(4)
  @override
  final String avatar;

  @HiveField(5)
  @override
  final List<String> topics;

  @override
  Map<String, dynamic> toJson() => _$BloggerToJson(this);

  @override
  BaseBlogger copyWith({
    String username,
    String createdAt,
    String avatar,
    List<String> topics,
  }) =>
      Blogger(
        id: id,
        email: email,
        username: username ??= this.username,
        createdAt: createdAt ??= this.createdAt,
        avatar: avatar ??= this.avatar,
        topics: topics ??= this.topics,
      );
}
