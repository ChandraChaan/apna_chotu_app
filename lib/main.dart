import 'package:apna_chotu_app/presentation/cubits/login_cubit.dart';
import 'package:apna_chotu_app/presentation/screens/location_screen.dart';
import 'package:apna_chotu_app/presentation/screens/otp_screen.dart';
import 'package:apna_chotu_app/presentation/screens/select_location.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Apna Chotu app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider(
          create: (context) => LoginCubit(),
          child:  const CurrentLocation()),
    );
  }
}

