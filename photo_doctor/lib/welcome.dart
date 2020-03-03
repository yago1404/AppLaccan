import 'package:flutter/material.dart';
import 'package:photo_doctor/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 4,
          backgroundColor: Colors.purple,
          navigateAfterSeconds: HomePage(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/camera.png"),
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
