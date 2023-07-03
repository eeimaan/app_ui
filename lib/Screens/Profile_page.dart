import 'package:flutter/material.dart';

class ShowProfile extends StatelessWidget {
 
  static const routeName = '/showprofile';
   ShowProfile({super.key});
   int _currentIndex = 3;
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
        title:  Center(
          child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
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
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/CircularAvater.jpg'),
              ),
            ),
          ),
        ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              
               Navigator.pushNamed(context, '/name');
             
            },
            child: Text('Edit Profile'),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.white , fontSize: 16),
            ),
            trailing: Switch(
              value: true, // Replace with your actual switch value
              onChanged: (value) {
                // Handle switch value change
              },
              activeColor: Colors.white, 
              inactiveThumbColor:
                  Colors.redAccent, 
             activeTrackColor: Colors.red.withOpacity(
                0.5), 
              inactiveTrackColor: Colors.white.withOpacity(
                  0.5), 
            ),
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: (){
               Navigator.pushNamed(context, '/profilesettings');
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text(
              'Subscription and Payments',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text(
              'Support',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                 fontSize: 16,
              ),
            ),
            onTap: (){
               Navigator.pushNamed(context, '/startpage');
            },
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
