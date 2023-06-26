
import 'package:flutter/material.dart';
import '../Components/components.dart';
import 'welcomepage.dart';

class dietset extends StatefulWidget {
  const dietset({super.key});

  @override
  State<dietset> createState() => _dietsetState();
}

class _dietsetState extends State<dietset> {
   static const routeName = '/diet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(currentIndex: 4), // Use the CustomAppBar here
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionWithOptions(
            question: 'Do you follow amny of these diets?',
            options: const ['Ketogenic diet', 'Veganism', 'Paleolithic diet','Gluten-free diet','Healthy diet'],
            classIndex: 4,
          ),
          const SizedBox(height: 270),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              buttonText: 'Next',
              onPressed: () {
               Navigator.pushNamed(context, '/savedatawidget');
              },
              buttonColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
