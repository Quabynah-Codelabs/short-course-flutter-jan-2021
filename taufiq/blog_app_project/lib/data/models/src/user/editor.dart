import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor.g.dart';

@JsonSerializable()
class Editor extends BaseEditor {
  final String key;
  final String firstName;
  final String lastName;
  final String email;
  final String? avatar;

  Editor({
    required this.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.avatar,
  });

  @override
  Map<String, dynamic> toJson() => _$EditorToJson(this);
}
