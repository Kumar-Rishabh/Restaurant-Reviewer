import 'dart:async';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => homePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.6,
        child: Image(
          image: AssetImage('images/sfood_2.jpeg'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
