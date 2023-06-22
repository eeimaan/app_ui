import 'package:app_ui/Screens/diets.dart';
import 'package:app_ui/Screens/duration_page.dart';
import 'package:app_ui/Screens/goal_page.dart';
import 'package:app_ui/Screens/name_gender.dart';
import 'package:app_ui/Screens/welcomepage.dart';
import 'package:flutter/material.dart';

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
      title: 'UI demo',
      theme: ThemeData(
        brightness: Brightness.dark, // Set the brightness to dark
        //scaffoldBackgroundColor: Colors.black,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const welcomepage(),
      routes: {
        '/welcome': (context) => const welcomepage(),
        '/name': (context) => const namegender(),
        '/goal': (context) => const goalset(),
        '/duration': (context) => const durationset(),
        '/exercise': (context) => const namegender(),
        '/diet': (context) => const dietset(),
      },
    );
  }
}
