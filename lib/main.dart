import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Dwar',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 24.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Hello, Calvin!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 56.0,
                          fontFamily: 'NanumGothic'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 600.0,
              height: 300.0,
              
              child: const Card(
                margin: EdgeInsets.fromLTRB(80.0, 40.0, 0.0, 0.0),
                elevation: 0,
                color: Colors.black,
                child: ListTile(
                  title: Text(
                    'Calvin Mokua',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 56.0,
                        fontFamily: 'NanumGothic'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
