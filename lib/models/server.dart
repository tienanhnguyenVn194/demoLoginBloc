import 'package:flutter_bloc_authentication/models/user.dart';

abstract class AuthenticationService {
  Future<User> getCurrentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User> getCurrentUser() async {
    return null; // return null for now
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // simulate a network delay
    if (email.toLowerCase() != 'dev@anvui.com') {
      throw AuthenticationException(message: 'Wrong username or password');
    }
    return User(name: email, email: email);
  }

  @override
  Future<void> signOut() {
    return null;
  }
}
class AuthenticationException implements Exception{
  final String message;

  AuthenticationException({this.message = 'error'});
}
