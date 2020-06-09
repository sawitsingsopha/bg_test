import 'package:bg_test/screens/nonSecureApi_screen.dart';
import 'package:bg_test/screens/secureApi_screen.dart';
import 'package:flutter/material.dart';

class Bitkub extends StatelessWidget {
  static const routeName = '/bitkub';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitkup'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Secure Api clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecureApi(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://assets-global.website-files.com/5c7e0dff10414d0ee84eef35/5c9241148f811a3f49de9566_Group%402x.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    alignment: Alignment.topRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 10, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      // offset: Offset(
                      //   // 1.0, // Move to right 10  horizontally
                      //   // 1.0, // Move to bottom 10 Vertically
                      // ),
                    )
                  ],
                ),
                width: 150,
                height: 200,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Secure Api\n(POST)',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.navigate_next),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Non Secure Api clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NonSecureApi(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://assets-global.website-files.com/5c7e0dff10414d0ee84eef35/5c9241148f811a3f49de9566_Group%402x.png"),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    alignment: Alignment.topCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 10, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                    )
                  ],
                ),
                width: 150,
                height: 200,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Non Secure Api\n(GET)',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.navigate_next),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
