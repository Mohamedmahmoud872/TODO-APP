import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.lightBlueAccent,
      title: Text(
        'To\nDo',
        style: TextStyle(
            color: Colors.indigo[900],
            fontSize: 70,
            fontWeight: FontWeight.bold,
            letterSpacing: 15),
      ),
      loadingText: Text(
        'Be Productive',
        style: TextStyle(
          fontSize: 30,
          color: Colors.indigo[900],
        ),
      ),
      seconds: 3,
      navigateAfterSeconds: Login(),
    );
  }
}
