import 'package:e_commerce_app/bloc/product_bloc/product_bloc.dart';
import 'package:e_commerce_app/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        //theme: ThemeData.dark(), 
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
