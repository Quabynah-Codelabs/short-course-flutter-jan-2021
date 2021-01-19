import 'base.dart';

/// base blogger data class
abstract class BaseBlogger extends BaseModel {
  String username;
  String createdAt;
  String email;
  String avatar;
  List<String> topics;

  BaseBlogger copyWith({
    String username,
    String createdAt,
    String avatar,
    List<String> topics,
  });
}
