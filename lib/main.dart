import 'package:app_ui/Screens/Content_page.dart';
import 'package:app_ui/Screens/CreateAccountpage.dart';
import 'package:app_ui/Screens/LoginScreen.dart';
import 'package:app_ui/Screens/SaveDataPage.dart';
import 'package:app_ui/Screens/diets.dart';
import 'package:app_ui/Screens/duration_page.dart';
import 'package:app_ui/Screens/goal_page.dart';
import 'package:app_ui/Screens/name_gender.dart';
import 'package:app_ui/Screens/start_page.dart';
import 'package:app_ui/Screens/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
        useMaterial3: true,
      ),
      home: StartPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
           case '/startpage':
          return PageTransition(
              child: StartPage(),
              type: PageTransitionType.leftToRight,
            );
             case '/createaccount':
          return PageTransition(
              child: const CreateAccountpage(),
              type: PageTransitionType.leftToRight,
            );
             case '/loginscreen':
          return PageTransition(
              child: const LoginScreen(),
              type: PageTransitionType.leftToRight,
            );
          case '/welcome':
          return PageTransition(
              child: const welcomepage(),
              type: PageTransitionType.leftToRight,
            );
            //return MaterialPageRoute(builder: (context) => const welcomepage());
          case '/name':
            return PageTransition(
              child: const namegender(),
              type: PageTransitionType.leftToRight,
            );
          case '/goal':
            return PageTransition(
              child: const goalset(),
              type: PageTransitionType.leftToRight,
            );
          case '/duration':
            return PageTransition(
              child: const durationset(),
              type: PageTransitionType.leftToRight,
            );
          case '/exercise':
            return PageTransition(
              child: const namegender(),
              type: PageTransitionType.leftToRight,
            );
          case '/diet':
            return PageTransition(
              child: const dietset(),
              type: PageTransitionType.leftToRight,
            );
            case '/savedatawidget':
            return PageTransition(
              child: const SaveDataPage(),
              type: PageTransitionType.leftToRight,
            );
            case '/contentpage':
            return PageTransition(
              child: const ContentPage(),
              type: PageTransitionType.leftToRight,
            );
          default:
            return MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text('Error'),
                ),
                body: Center(
                  child: Text('Route not found.'),
                ),
              ),
            );
        }
      },
    );
  }
}
