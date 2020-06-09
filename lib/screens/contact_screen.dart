import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  static const routeName = '/contact';

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Center(
        child: Container(
          child: Text("Contact Screen"),
        ),
      ),
    );
  }
}
