import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// User data model
@JsonSerializable()
class Blogger {
  const Blogger({
    required this.firstName,
    required this.key,
    required this.lastName,
    required this.email,
    this.avatar,
  });

  /// de-serialize data from a database
  factory Blogger.fromSnapshot(Map<String, dynamic> json) => _$BloggerFromJson(json);

  /// serialize data into a database
  Map<String, dynamic> toJson() => _$BloggerToJson(this);

  final String key;
  final String firstName;
  final String lastName;
  final String email;
  final String? avatar;


  @override
  String toString() => toJson().toString();
}
