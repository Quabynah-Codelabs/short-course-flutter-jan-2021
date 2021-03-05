/// Object
///
/// An object is a real-life entity such as a table, human, car, etc.
/// The object has two characteristics - state and behavior.
/// Let's take an example of a car which has a name, model name,
/// price and behavior moving, stopping, etc.
/// The object-oriented programming offers to identify the state and behavior of the object.
///
/// https://www.javatpoint.com/dart-object-oriented-concepts
var user = User(firstName: 'Dennis', lastName: 'Bilson')..age = 90;
var currentUser = User();

/// Classes
///
/// Dart classes are defined as the blueprint of the associated objects.
/// A Class is a user-defined data type that describes the characteristics and
/// behavior of it. To get all properties of the class, we must
/// create an object of that class.
///
/// class ClassName {
///     <fields>
///     <getter/setter>
///     <constructor>
///     <functions>
/// }
///
/// https://www.javatpoint.com/dart-object-oriented-concepts
class User {
  /// region constructors
  /// 1. non-parameterized constructor (using a constructor initializer)
  // User()
  //     : firstName = '',
  //       lastName = '',
  //       email = '',
  //       avatar = '',
  //       isApproved = false,
  //       likeCount = 0,
  //       ratings = 0.0;

  /// 2. positional constructor
  // User(this.firstName, this.lastName, this.email, this.avatar,
  //     this.isApproved, this.likeCount, this.ratings);

  /// 3. other constructor
  User(
      {this.firstName,
      this.lastName,
      this.email,
      this.avatar,
      this.isApproved,
      this.likeCount,
      this.ratings});

  /// 4. named constructor
  User.create(this.firstName, this.lastName, this.email, this.avatar,
      this.isApproved, this.likeCount, this.ratings);

  /// endregion

  /// region fields
  final String firstName; // instance variable
  final String lastName; // instance variable
  final String email; // instance variable
  final String avatar; // instance variable
  final bool isApproved; // instance variable
  final int likeCount; // instance variable
  final double ratings; // instance variable
  var _age;

  /// endregion

  /// region setters
  set age(int value) {
    _age = value;
  }

  /// endregion

  /// region getters
  int get age => _age;

  /// endregion

  /// region methods
  /// method -> causes user to speak out a word
  void speak() {}

  /// method to alter final variables in a class
  User copyWith(
          {String firstName,
          String lastName,
          String email,
          String avatar,
          bool isApproved,
          int likeCount,
          double ratings}) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        isApproved: isApproved ?? this.isApproved,
        likeCount: likeCount ?? this.likeCount,
        ratings: ratings ?? this.ratings,
      );

  /// endregion
}
