import 'package:apna_chotu_app/presentation/blocs/login_bloc.dart';
import 'package:apna_chotu_app/presentation/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repository/user_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final UserRepository userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apna Chotu app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider(
          create: (context) => LoginBloc(userRepository: userRepository),
          child: const IntroductionScreen()),
    );
  }
}
