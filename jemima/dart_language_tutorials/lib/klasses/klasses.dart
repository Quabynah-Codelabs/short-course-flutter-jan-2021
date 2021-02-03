import 'package:meta/meta.dart';

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

  void add(int num1, int num2);
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

  /// parameterized constructor
  Reader({@required String id}) {
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

  @override
  void add(int num1, int num2) {
    // string concatenation
    // print('Sum -> ' + (num1 + num2).toString());

    // string interpolation
    print('Sum -> ${(num1 + num2)}');

    // var id = int.parse('123');
  }
}

/// constructors -> used to create instances of a class
class Publisher extends User {
  @override
  final String id;
  DateTime dob;

  /// parameterized constructor
  Publisher({this.id, this.dob});

  @override
  bool canEdit() => true;

  int calcAge() {
    var currentDate = DateTime.now();
    return currentDate.year - dob.year;
  }

  @override
  void add(int num1, int num2) {
    // TODO: implement add
  }

  // void add(int num1, int num2, int num3) {
  //   add(num1 + num2, num3);
  // }
}
