import 'package:flutter/material.dart';

import '../Components/components.dart';
import 'screens.dart';
class LoginScreen extends StatelessWidget {
   static const routeName = '/loginscreen';
  const LoginScreen({super.key});
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
        title: const Center(child: Text('Welcome to Krause!')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 140),
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
            SizedBox(height: 10),
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
            const SizedBox(height: 100),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonText: 'Log In',
                onPressed: () {
                   Navigator.pushNamed(context, '/welcome');
                },
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
