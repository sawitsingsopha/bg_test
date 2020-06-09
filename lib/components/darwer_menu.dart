import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/contact_screen.dart';
import '../screens/issues_screen.dart';
import '../screens/bitkub_screen.dart';
import '../screens/student_screen.dart';

class DarwerMenu extends StatelessWidget {
  Widget _buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text("BGTechnology"),
      accountEmail: Text("bgit-2020@email.com"),
      // currentAccountPicture: Image.asset(
      //   "assets/images/BG.jpg",
      //   fit: BoxFit.cover,
      // ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/images/BG.jpg"),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Icon(
            Icons.edit,
            size: 22,
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.orangeAccent,
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildDrawerHeader(),
          ListTile(
            leading: Icon(Icons.rss_feed),
            title: Text("About"),
            onTap: () {
              Navigator.pushNamed(context, About.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.rss_feed),
            title: Text("Contact"),
            onTap: () {
              Navigator.pushNamed(context, Contact.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.rss_feed),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, Profile.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text("Issues"),
            onTap: () {
              Navigator.pushNamed(context, Issues.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text("Bitkub"),
            onTap: () {
              Navigator.pushNamed(context, Bitkub.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text("Student"),
            onTap: () {
              Navigator.pushNamed(context, Student.routeName);
            },
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {
                  Navigator.popAndPushNamed(context, Settings.routeName);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
