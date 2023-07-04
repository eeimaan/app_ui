import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Components/customnavigationbar.dart';
class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  static const routeName = '/workout';
 int _currentIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/contentpage');
        break;
      case 1:
        // Do nothing, already on the WorkoutPage
        break;
      case 2:
        Navigator.pushNamed(context, '/diary');
        break;
      case 3:
        Navigator.pushNamed(context, '/nutration');
        break;
      case 4:
        Navigator.pushNamed(context, '/showprofile');
        break;
    }
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Page'),
      ),
      body: Center(
        child: Text('Workout Content'),
      ),
      
       bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}