import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'MyHomePage.dart';
import 'cubit/CounterCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=> CounterCubit(),
      child: MaterialApp(
        home:   MyHomePage(),
      ),
    );
  }
}
