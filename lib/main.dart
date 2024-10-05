import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/meditation/presentation/HomePage/home_page.dart';
import 'feature/meditation/presentation/bottom_Nav_bar/bloc/navigation_bloc.dart';

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
        create: (context) => NavigationBloc(),),
      ],
        child: MaterialApp(
          title: 'Meditation App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.
            fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:  HomePage(),
        ),
    );
  }
}

