import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reader.g.dart';

@JsonSerializable()
class Reader extends BaseReader {
  final String key;
  final String firstName;
  final String lastName;
  final String email;
  final String? avatar;

  Reader({
    required this.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.avatar,
  });

  @override
  Map<String, dynamic> toJson() => _$ReaderToJson(this);
}
