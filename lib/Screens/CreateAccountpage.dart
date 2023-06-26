import 'package:flutter/material.dart';

import '../Components/components.dart';
import 'screens.dart';

class CreateAccountpage extends StatelessWidget {
   static const routeName = '/createaccount';
  const CreateAccountpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Welcome to Krause!'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLogo('images/apple.png'),
                SizedBox(width: 20),
                _buildLogo('images/google.png'),
                SizedBox(width: 20),
                _buildLogo('images/facebook.png'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Divider(
                      color: Colors.redAccent,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Divider(
                      color: Colors.redAccent,
                      height: 1,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(child: _buildTextField(hintText: 'Email')),
            //  const SizedBox(height: 10),
            SingleChildScrollView(child: _buildTextField(hintText: 'Password')),
            const SizedBox(height: 120),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonText: 'Create an Account',
                onPressed: () {
                   Navigator.pushNamed(context, '/welcome');
                },
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'By creating an account you agree to ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of use and privacy policy',
                        style: TextStyle(
                          color: Colors.redAccent,
                          decoration: TextDecoration
                              .underline, // Add underline decoration
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(String imagePath) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}

Widget _buildTextField({String? hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
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
  );
}
