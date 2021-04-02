import 'package:flutter/material.dart';
import 'package:greenery/splash.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterChat',

        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primaryColor: Color(0xff145C9E),
          scaffoldBackgroundColor: Colors.white,
          accentColor: Color(0xff007EF4),

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
// home:fun());

        home: SplashScreen());

  }
}