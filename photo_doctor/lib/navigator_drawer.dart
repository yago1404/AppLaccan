
import 'package:flutter/material.dart';
import 'package:photo_doctor/about.dart';
import 'package:photo_doctor/camera.dart';
import 'package:photo_doctor/contact.dart';
import 'package:photo_doctor/how_to_use.dart';

class NavigatorDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 55),
      child: SafeArea(
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
              ),
              ListTile(
                title: Text("Contato"),
                subtitle: Text("Entre em contato conosco"),
                trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder :(context) => Contact()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
