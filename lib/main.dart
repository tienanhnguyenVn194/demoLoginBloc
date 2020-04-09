import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_authentication/home/home_view.dart';
import 'package:flutter_bloc_authentication/models/server.dart';
import 'feature/login/authentication/authentication.dart';
import 'feature/login/login_view.dart';

void main() => runApp(
  RepositoryProvider<AuthenticationService>(
    create: (context){
      return FakeAuthenticationService();
    },
    child: BlocProvider<AuthenticationBloc>(
      create: (context){
        final authService = RepositoryProvider.of<AuthenticationService>(context);
        return AuthenticationBloc(authService)..add(AppLoaded());
      },
      child: MyApp(),
    ),
  )
);

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login_TienAnh',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state){
          if (state is AuthenticationAuthenticated){
            // show home page
            return HomePage();
          }
          // otherwise show login page
          return LoginPage();
        },
      ),
    );
  }
}