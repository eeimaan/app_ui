import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  static const routeName = '/profilesettings';
  const ProfileSettings({super.key});

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
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column( children: [
        ListTile(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: () {
              Navigator.pushNamed(context, '/personaldetails');
          },
        ),
        Divider(color: Colors.white),
         ListTile(
          title: Text(
            'Theme',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: () {
           
          },
        ),
        Divider(color: Colors.white),
         ListTile(
          title: Text(
            'Push Notification',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: () {
           
          },
        ),
        Divider(color: Colors.white),
      ]),
    );
  }
}
