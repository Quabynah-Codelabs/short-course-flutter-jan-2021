import 'package:week1/tutorials/classes.dart';

/// entry point of application
void main() {
  /// working with lists
  // print(names.length);
  // print(names.first is String);
  // print(names.first);
  // print(names[0]);
  // print(names.last);
  // print(names.indexOf('derrick'));
  // print(names.elementAt(2));
  // print(names); // original
  // names.addAll(['hamza', 'taufiq', 'quabynah']);
  // print(names); // updated with new list
  // names.removeRange(1, 3);
  // print(names); // final list after removal

  /// working with sets
  // print(halogens);

  /// using dart cascade notation
  // print(halogens.union(halogens
  //   ..remove('chlorine')
  //   ..add('bilson')));

  var user = User(firstName: 'Dennis', lastName: 'Bilson');
  // user.firstName = 'Quabynah'; // not possible for final fields
  user = user.copyWith(firstName: 'Quabynah', lastName: 'Hamza');

  print(user.firstName);
  print(user.lastName);
}
