
/// Classes
///
/// Used as blueprints for creating new objects
/// 2 types -> Concrete & Abstract
///
///
/// Abstract Classes
/// 1. cannot create an instance of this object
/// 2. Uses the abstract keyword
/// 3. Must have at least one abstract method
abstract class User {
  abstract String id;
  void canEdit();
}

/// Concrete Classes
/// 1. can create an instance of this object
/// 2. Does not use the abstract keyword
/// 3. Does not require an abstract method
class Reader extends User {
  @override
  String get id => "123";

  @override
  set id(String _id) {
    id = _id;
  }

  @override
  void canEdit() => false;

}