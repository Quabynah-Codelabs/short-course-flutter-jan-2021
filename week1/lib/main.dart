// import 'tutorials/numbers.dart' show age;

import 'package:week1/tutorials/lists.dart';
import 'package:week1/tutorials/sets.dart';

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
  print(names); // original
  names.addAll(['hamza', 'taufiq', 'quabynah']);
  print(names); // updated with new list
  names.removeRange(1, 3);
  print(names); // final list after removal

  /// working with sets
  print(halogens);

  /// using dart cascade notation
  print(halogens.union(halogens
    ..remove('chlorine')
    ..add('bilson')));
}
