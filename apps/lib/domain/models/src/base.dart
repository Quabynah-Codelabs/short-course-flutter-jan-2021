/// base data model class
abstract class BaseModel {
  String id;

  Map<String, dynamic> toJson();

  @override
  String toString() => toJson().toString();
}
