import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Components/components.dart';
import 'screens.dart';

class StartPage extends StatelessWidget {
  static const routeName = '/start';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Startbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 350),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomButton(
                      buttonText: 'Get Started',
                      onPressed: () {
                        Navigator.pushNamed(context, '/createaccount');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              color: Colors
                                  .white, 
                            ),
                          ),
                          TextSpan(
                            text: ' Log In',
                            style: TextStyle(
                              color: Colors.redAccent, 
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/loginscreen');
            
                                print('Log In tapped!');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
