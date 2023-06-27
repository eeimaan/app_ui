import 'package:flutter/material.dart';

class ShowProfile extends StatelessWidget {
  static const routeName = '/showprofile';
  const ShowProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
         Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.redAccent,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/CircularAvater.jpg'),
            ),
          ),
        ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              
               Navigator.pushNamed(context, '/name');
             
            },
            child: Text('Edit Profile'),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Switch(
              value: true, // Replace with your actual switch value
              onChanged: (value) {
                // Handle switch value change
              },
              activeColor: Colors.white, // Set the active color to red
              inactiveThumbColor:
                  Colors.redAccent, // Set the inactive thumb color to white
             activeTrackColor: Colors.red.withOpacity(
                0.5), // Optional: Adjust the active track color opacity
              inactiveTrackColor: Colors.white.withOpacity(
                  0.5), // Optional: Adjust the inactive track color opacity
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: (){
               Navigator.pushNamed(context, '/profilesettings');
            },
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              'Subscription and Payments',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              'Support',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
               Navigator.pushNamed(context, '/startpage');
            },
          ),
          Divider(color: Colors.white),
        ],
      ),
    );
  }
}
