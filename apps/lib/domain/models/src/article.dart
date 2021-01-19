import 'base.dart';

/// base article data class
abstract class BaseArticle<S> extends BaseModel {
  String imageUrl;
  S source;
  String author;
  String title;
  String desc;
  String publishedAt;
}
