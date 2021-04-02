import 'dart:async';
import 'package:flutter/material.dart';
import 'package:greenery/home.dart';
import 'package:greenery/signin.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {

    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => signin_medical()
    ));

  }

  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/img.gif"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),

            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.black54,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}