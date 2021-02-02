/// Classes -> also known as `object constructors`
///
/// Used as blueprints for creating new objects
/// 2 types -> Concrete & Abstract
///
///
/// Abstract Classes
/// 1. cannot create an instance of an object from this class
/// 2. Uses the abstract keyword
/// 3. Must have at least one abstract method
abstract class User {
  String id;

  bool canEdit();
}

/// Concrete Classes
/// 1. can create an instance of this object
/// 2. Does not use the abstract keyword but may use the `extends` or
/// `implements` keyword to show inheritance
/// 3. Does not require an abstract method
class Reader extends User {
  String _id;

  /// non-parameterized constructor
  // Reader();

  Reader(String id) {
    this._id = id;
  }

  @override
  String get id => _id;

  @override
  set id(String _id) {
    this._id = _id;
  }

  @override
  bool canEdit() => false;
}

/// constructors -> used to create instances of a class
class Publisher extends User {
  @override
  final String id;
  DateTime dob;

  /// parameterized constructor
  Publisher(this.id, this.dob);

  @override
  bool canEdit() => true;

  int calcAge() {
    var currentDate = DateTime.now();
    return currentDate.year - dob.year;
  }
}
