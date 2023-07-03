import '../Components/components.dart';
import 'screens.dart';

import 'package:flutter/material.dart';

class goalset extends StatefulWidget {
  const goalset({super.key});

  @override
  State<goalset> createState() => _goalsetState();
}

class _goalsetState extends State<goalset> {
   static const routeName = '/goal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(currentIndex: 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionWithOptions(
              question: 'What\'s your fitness goal?',
              options: const ['Lose weight', 'Build muscles', 'Get fit'],
              classIndex: 1,
            ),
            const SizedBox(height: 350),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(
                  buttonText: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, '/duration');
                  },
                  buttonColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}