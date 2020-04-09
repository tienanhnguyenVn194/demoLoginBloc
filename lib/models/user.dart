import 'package:meta/meta.dart';

class User {
  final String username;
  final String password;


  User({@required this.username, @required this.password});

  @override
  String toString() => 'User { name: $username, email: $password}';
}