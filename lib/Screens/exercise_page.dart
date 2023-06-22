import 'package:app_ui/Components/customappbar.dart';
import 'package:app_ui/Components/optionsfield.dart';
import 'package:app_ui/Screens/diets.dart';
import 'package:app_ui/Screens/welcomepage.dart';
import 'package:flutter/material.dart';

class exercise extends StatefulWidget {
  const exercise({super.key});

  @override
  State<exercise> createState() => _exerciseState();
}

class _exerciseState extends State<exercise> {
   static const routeName = '/exercise';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(currentIndex: 3), // Use the CustomAppBar here
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
const QuestionWithOptions(
            question: 'What do you prefer?',
            options: ['Balance', 'Cardo', 'Runing','Streching','Pull-up','Crunch'],
             classIndex: 3,
          ),


          const SizedBox(height: 230),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonText: 'Next',
                onPressed: () {
                 Navigator.pushNamed(context, '/diet');
                },
                buttonColor: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
