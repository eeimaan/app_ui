
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Screens/screens.dart';

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
              child: const HomePage(),
              type: PageTransitionType.leftToRight,
            );
             case '/showprofile':
            return PageTransition(
              child:  ShowProfile(),
              type: PageTransitionType.leftToRight,
            );
             case '/profilesettings':
            return PageTransition(
              child: const ProfileSettings(),
              type: PageTransitionType.leftToRight,
            );
             case '/personaldetails':
            return PageTransition(
              child: const PersonalDetails(),
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
