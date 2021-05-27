import 'package:flutter/material.dart';
import 'package:resturant_review_predictor/spalshScreen.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[900],),
      home: Splash(),
    );
  }
}



