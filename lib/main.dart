import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_documentar/User/Bloc/bloc_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Login',
          home: const Login(),
          initialRoute: 'main',
          routes: {'main': (context) => const Login()},
        ),
        bloc: UserBloc());
  }
}
