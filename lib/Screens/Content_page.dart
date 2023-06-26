import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key});
  static const routeName = '/contentpage';

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 20, // Adjust the radius to make the avatar smaller
            backgroundImage: AssetImage(
              'images/CircularAvater.jpg',
            ),
          ),
        ),
        title: Text(
          'Good Afternoon, Devis',
          style: TextStyle(fontSize: 16),
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}