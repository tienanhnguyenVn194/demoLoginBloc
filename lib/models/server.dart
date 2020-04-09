
import 'user.dart';

abstract class AuthenticationService {
  Future<User> getCurrentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

class LoginValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  static bool isValidUsername(String username) {
    return _emailRegExp.hasMatch(username) && username.length > 6;
  }

  static bool isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password) && password.length > 6;
  }
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User> getCurrentUser() async {
    return null; // return null for now
  }

  @override
  Future<User> signInWithEmailAndPassword(String username, String password) async {
    await Future.delayed(Duration(seconds: 1)); // simulate a network delay
    if (username.toLowerCase() != 'anvuidemo' || password != 'av123456') {
      throw AuthenticationException(message: 'Wrong username or password');
    }
    else if(!LoginValidator.isValidUsername(username)) {
      throw AuthenticationException(message: 'User not true');
    }

    else if(!LoginValidator.isValidPassword(password)) {
      throw AuthenticationException(message: 'Pasword.lengt > 6');
    }
    return User(username: 'Anvui', password: password);
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