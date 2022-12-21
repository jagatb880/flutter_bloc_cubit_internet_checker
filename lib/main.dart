import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/blocs/internet_bloc/internet_bloc.dart';
import 'package:flutter_bloc_pattern/cubits/internet_cubit.dart';
import 'package:flutter_bloc_pattern/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocProvider(
      create: (context) => InternetCubit(),
      // create: (context) => InternetBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
