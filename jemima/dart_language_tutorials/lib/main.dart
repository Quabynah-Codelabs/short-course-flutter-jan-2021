// import 'classes.dart'; -> RELATIVE PATH IMPORT
// import 'package:dart_language_tutorials/classes.dart'; -> FULL PATH IMPORT
import 'classes.dart';

void main() {
  // create user object
  var user = User();

  /// alter properties of user object
  user.lastName = 'Bilson';
  user.firstName = 'Quabynah';

  /// print out full name
  print(user.fullName);
}
