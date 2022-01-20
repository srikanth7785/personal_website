import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vanamala Srikanth',
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
         bodyText2: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData().copyWith(color: Colors.white70),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}