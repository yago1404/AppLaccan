import 'package:flutter/material.dart';
import 'package:photo_doctor/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      color: Colors.purple,
      home: Welcome(),
    );
  }
}