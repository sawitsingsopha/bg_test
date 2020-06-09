import 'package:flutter/material.dart';


import '../services/student_services.dart';
import '../services/address_services.dart';


class Student extends StatefulWidget {
  static const routeName = '/student';

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override

  @override
  void initState() { 
    super.initState();
    fetchStudents();
    fetchAddress();
  }

  Future fetchStudents() async {
    print('fetchStudents');
    return await loadStudent();
  }
  Future fetchAddress() async {
    print('fetchAddress');
    return await loadAddress();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student"),
      ),
      body: Center(
        child: Container(
          child: Text("Student Screen"),
        ),
      ),
    );
  }
}
