import 'dart:convert';

import '../models/category_model.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Issues extends StatefulWidget {
  static const routeName = '/Issues';

  @override
  _IssuesState createState() => _IssuesState();
}

class _IssuesState extends State<Issues> {
  Future<Category> catrgory;
  @override
  void initState() {
    super.initState();
    catrgory = fatchCategory();
  }

  Future<Category> fatchCategory() async {
    String url = 'http://150.95.26.180/pttinsight/issue/show_category_main';
    String token =
        'IeQstVzJKKFxKtsOrrGqMOuaXnnYz2fx2j6hyXBMxdgDHgyq0TiVHDTWXexWmjhj0KX8AWOqrRDBCu5KjbUiE34sSFMw1pKlLrVBZlSLDCQHInWaxbKJzG03DnU1RBQ6';



    final response = await http.get(url, headers: {
      'Token': '$token',
    });
    // String logResponse = response.statusCode.toString();
    // List cat = response.
    // print('statusCode $logResponse');
    // String body = utf8.decode(response.bodyBytes);



    if (response.statusCode == 200) {
      var category = Category.fromJson(json.decode(response.body));
      print(category);
      return category;
    } else {
      throw Exception('Failed to load post');
    }
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: IconButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.black87,
        //     ),
        //     onPressed: () {}),
        title: Center(
          child: Text(
            "CATEGORY",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black87,
              ),
              onPressed: () {})
        ],
      ),
      body: FutureBuilder<Category>(
        future: catrgory,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            snapshot.data.result.map((e) => {
              print(e)
            });
            return Text('111111');
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
