import 'package:flutter/material.dart';

// Screen
import './screens/home_screen.dart';
import './screens/about_screen.dart';
import './screens/settings_screen.dart';
import './screens/profile_screen.dart';
import './screens/contact_screen.dart';
import './screens/issues_screen.dart';
import './screens/bitkub_screen.dart';
import './screens/student_screen.dart';

// Components

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG LAYOUT',
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'Kanit',
        brightness: Brightness.light,
      ),
      initialRoute: '/', // homescreen
      routes: {
        Home.routeName: (context) => Home(),
        About.routeName: (context) => About(),
        Profile.routeName: (context) => Profile(),
        Contact.routeName: (context) => Contact(),
        Settings.routeName: (context) => Settings(),
        Issues.routeName: (context) => Issues(),
        Bitkub.routeName: (context) => Bitkub(),
        Student.routeName: (context) => Student(),
      },
    );
  }
}
