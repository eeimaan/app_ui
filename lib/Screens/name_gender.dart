import '../Components/components.dart';
import 'screens.dart';

import 'package:flutter/material.dart';

class namegender extends StatefulWidget {
  const namegender({super.key});

  @override
  State<namegender> createState() => _namegenderState();
}

class _namegenderState extends State<namegender> {
  static const routeName = '/name';
  late String selectedGender;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(currentIndex: 0),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(child: _buildInputField('What\'s your name?', hintText: 'name')),
          //  const SizedBox(height: 10),
            SingleChildScrollView(child: _buildInputField('How old you are?', hintText: 'age')),
            //const SizedBox(height: 10),
            // _buildInputField('What\'s your gender?', hintText: ''),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Gender',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(15, 55, 56, 56),
                  filled: true,
                  hintText: 'gender',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    selectedGender = value!; // Update the selected gender
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(child: _buildInputField('Height', hintText: 'height')),
           // const SizedBox(height: 10),
            SingleChildScrollView(child: _buildInputField('Weight', hintText: 'current weight')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(15, 55, 56, 56),
                  filled: true,
                  hintText: 'Target weight',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 40),
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: CustomButton(
                  buttonText: 'Next',
                  onPressed: () {
                   Navigator.pushNamed(context, '/goal');
                  },
                ),
              ),
            ),

            // _buildInputField('', hintText: 'target weight'),
          ]),
    );
  }
}

Widget _buildInputField(String? labelText, {String? hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText!,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color.fromARGB(15, 55, 56, 56),
            filled: true,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ),
  );
}
