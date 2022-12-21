// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_pattern/blocs/internet_bloc/internet_bloc.dart';
// import 'package:flutter_bloc_pattern/blocs/internet_bloc/internet_state.dart';
import 'package:flutter_bloc_pattern/cubits/internet_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetCubit, InternetState>(
            // child: BlocConsumer<InternetBloc, InternetState>(
            listener: (context, state) {
              if (state == InternetState.Gained) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Internet Connected"),
                    backgroundColor: Colors.green,
                  ),
                );
              } else if (state == InternetState.Lost) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Internet not Connected"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state == InternetState.Gained) {
                return Text("Internet is On");
              } else if (state == InternetState.Lost) {
                return Text("Internet is Off");
              } else {
                return Text("Loading...");
              }
            },
          ),
        ),
      ),
    );
  }
}
