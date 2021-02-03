import 'klasses/klasses.dart';

void main() {
  var user = Reader(id: '123'); // reader object
  user.id; // getter
  print(user.id);
  user.id = '2345'; // setter
  print(user.id);

  var pub = Publisher(dob: DateTime.utc(2000), id: '123');
  print(pub.calcAge());
}
