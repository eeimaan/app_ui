import 'dart:async';

import 'package:flutter/material.dart';

class SaveDataPage extends StatefulWidget {
  static const routeName = '/savedatawidget';

  const SaveDataPage({Key? key}) : super(key: key);

  @override
  _SaveDataPageState createState() => _SaveDataPageState();
}

class _SaveDataPageState extends State<SaveDataPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _startDataAnalysis();
  }

  void _startDataAnalysis() {
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });

      // Proceed to the next screen
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() {
    Navigator.pushNamed(context, '/contentpage');
  }

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isLoading
                ? SizedBox(
                    width: 80,
                    height: 80,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      strokeWidth: 8, // Increase the stroke width
                    ),
                  )
                : const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 50,
                  ),
            const SizedBox(height: 20),
            Text(
              _isLoading ? 'Analyzing your data...' : 'Analyzed Data',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
