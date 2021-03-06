import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

/// Blog post data model
@JsonSerializable()
class BlogPost extends BaseBlogPost {
  // receive data from database
  factory BlogPost.fromJson(Map<String, dynamic> json) =>
      _$BlogPostFromJson(json);

  /// constructors
  BlogPost({
    required this.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.publisher,
    required this.timestamp,
    required this.category,
    this.reviews = 0,
    this.comments = 0,
  });

  /// props
  @override
  final String key;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String publisher;
  @override
  final String timestamp;
  @override
  final String category;
  @override
  final int reviews;
  @override
  final int comments;

  // send data to database
  @override
  Map<String, dynamic> toJson() => _$BlogPostToJson(this);
}

/// I have added these samples for demo purposes
final sampleBlogs = <BaseBlogPost>[
  BlogPost(
      key: "1",
      title: "Make  design systems people want to use.",
      description:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
      imageUrl:
          "https://images.unsplash.com/photo-1612832164066-305667c23a01?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
      timestamp: "3 Feb",
      reviews: 22800,
      comments: 8000,
      category: "Latest",
      publisher: "Ken Rogers"),
  BlogPost(
      key: "2",
      title: "Become a master in color palette.",
      description:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
      imageUrl:
          "https://images.unsplash.com/photo-1593642634402-b0eb5e2eebc9?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
      timestamp: "3 Feb",
      reviews: 32200,
      comments: 10000,
      category: "Latest",
      publisher: "Ken Rogers"),
  BlogPost(
      key: "3",
      title: "UX Design Industry 2021 Growth",
      description:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
      imageUrl:
          "https://images.unsplash.com/photo-1613722205361-c75c5f1042fb?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
      timestamp: "3 Feb",
      reviews: 80300,
      comments: 9000,
      category: "Latest",
      publisher: "Ken Rogers"),
  BlogPost(
    key: "4",
    title: "Using motion design 2 animate graphics",
    description:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    imageUrl:
        "https://images.unsplash.com/photo-1613822362343-c014d17ee099?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    timestamp: "3 Feb",
    reviews: 22800,
    comments: 8000,
    category: "Latest",
    publisher: "Ken Rogers",
  ),
];
