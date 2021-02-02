import 'klasses/klasses.dart';

void main() {
  var user = Reader('123'); // reader object
  user.id; // getter
  print(user.id);
  user.id = '2345'; // setter
  print(user.id);

  var pub = Publisher('123', DateTime.utc(2000));
  print(pub.calcAge());
}
