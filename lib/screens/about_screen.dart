import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static const routeName = '/about';

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Container(
          child: Text("About Screen"),
        ),
      ),
    );
  }
}
