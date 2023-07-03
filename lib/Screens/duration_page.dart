import '../Components/components.dart';
import 'screens.dart';

import 'package:flutter/material.dart';

class durationset extends StatefulWidget {
  const durationset({super.key});

  @override
  State<durationset> createState() => _durationsetState();
}

class _durationsetState extends State<durationset> {
  static const routeName = '/duration';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(currentIndex: 2), // Use the CustomAppBar here
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionWithOptions(
              question: 'How often do you train each week?',
              options: const ['1-3 days', '4-5 days', '6-7days'],
              classIndex: 2,
            ),
            const SizedBox(height: 10),
            QuestionWithOptions(
              question: 'Typical length of workout?',
              options: const ['0-30 min', '30-60 min', '60 min - 1 hour'],
              classIndex: 2,
            ),
            const SizedBox(height: 190),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, '/exercise');
                },
                buttonColor: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
