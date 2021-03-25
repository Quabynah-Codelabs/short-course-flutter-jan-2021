import 'package:blog_app_project/domain/entities/src/blog.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:blog_app_project/domain/sources/sources.dart';

class BlogRepository implements BaseBlogRepository {
  const BlogRepository({
    required this.local,
    required this.remote,
  });

  final BaseBlogLocalDataSource local;
  final BaseBlogRemoteDataSource remote;

  @override
  Future deleteBlogPost(String key) {
    // TODO: implement deleteBlogPost
    throw UnimplementedError();
  }

  @override
  Future<BaseBlogPost> getBlogPost(String key) {
    // TODO: implement getBlogPost
    throw UnimplementedError();
  }

  @override
  Stream<BaseBlogPost> observeBlogPost(String key) {
    // TODO: implement observeBlogPost
    throw UnimplementedError();
  }

  @override
  Future postBlogPost(BaseBlogPost post) {
    // TODO: implement postBlogPost
    throw UnimplementedError();
  }

  @override
  Future updateBlogPost(BaseBlogPost post) {
    // TODO: implement updateBlogPost
    throw UnimplementedError();
  }
}
