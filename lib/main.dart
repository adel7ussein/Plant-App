import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plant App',
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: const AppBarTheme(color: kPrimaryColor),
          colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
