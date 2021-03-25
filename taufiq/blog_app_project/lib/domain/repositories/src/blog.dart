import 'package:blog_app_project/domain/entities/entities.dart';

/// repository class for handling transactions on the blog post database
abstract class BaseBlogRepository {
  const BaseBlogRepository();
  Future postBlogPost(BaseBlogPost post);

  Future updateBlogPost(BaseBlogPost post);

  Future<BaseBlogPost> getBlogPost(String key);

  Stream<BaseBlogPost> observeBlogPost(String key);

  Future deleteBlogPost(String key);
}
