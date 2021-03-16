abstract class BaseBlogPost {
  late String key;
  late String title;
  late String description;
  late String imageUrl;
  late String publisher;
  late String timestamp;
  late String category;
  late int reviews;
  late int comments;

  Map<String, dynamic> toJson();
}
