import 'package:apps/domain/models/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'article.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class Article extends BaseArticle<Source> {
  Article({
    @required this.id,
    @required this.imageUrl,
    @required this.author,
    @required this.title,
    @required this.source,
    @required this.publishedAt,
    this.desc,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  @HiveField(0)
  @override
  @JsonKey(name: 'url', required: true)
  final String id;

  @HiveField(1)
  @JsonKey(name: 'urlToImage')
  @override
  final String imageUrl;

  @HiveField(2)
  @override
  final String author;

  @HiveField(3)
  @override
  final String title;

  @HiveField(4)
  @JsonKey(name: 'description')
  @override
  final String desc;

  @HiveField(5)
  @override
  final String publishedAt;

  @JsonKey(name: 'source', nullable: true)
  @HiveField(6)
  @override
  final Source source;

  @override
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable(fieldRename: FieldRename.snake)
class Source {
  Source({this.id, this.name});

  factory Source.fromJson(json) => _$SourceFromJson(json);

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  Map<String, dynamic> toJson() => _$SourceToJson(this);

  @override
  String toString() => toJson().toString();
}
