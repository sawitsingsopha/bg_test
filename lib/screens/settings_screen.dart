import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const routeName = '/setting';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Center(
        child: Container(
          child: Text("Setting Screen"),
        ),
      ),
    );
  }
}
