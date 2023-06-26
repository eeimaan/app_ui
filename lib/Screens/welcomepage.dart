import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Components/components.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  static const routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/welcome.svg', // Replace 'your_image.svg' with your actual SVG image path
              height: 200,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'We will help you achieve your goals by asking you some questions.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonText: 'Go',
                onPressed: () {
                  Navigator.pushNamed(context, '/name');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
