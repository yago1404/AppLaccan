
import 'package:flutter/material.dart';
import 'package:photo_doctor/about.dart';
import 'package:photo_doctor/camera.dart';
import 'package:photo_doctor/howToUse.dart';

class NavigatorDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Sobre"),
              subtitle: Text("Mais informações"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                },
            ),
            ListTile(
              title: Text("Como usar"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HowToUse()));
              },
            ),
            ListTile(
              title: Text("Camera"),
              subtitle: Text("Tire uma foto"),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Camera()));
              },
            )
          ],
        ),
      ),
    );
  }
}
