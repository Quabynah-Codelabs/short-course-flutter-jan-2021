/// base class for all users
///
/// there are 3 types of users namely:
/// 1. reader
/// 2. publisher
/// 3. editor
abstract class BaseUser {
  late String key;
  late String firstName;
  late String lastName;
  late String email;
  late String? avatar;

  Map<String, dynamic> toJson();
}
