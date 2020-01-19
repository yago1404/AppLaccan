
import 'package:flutter/material.dart';
import 'package:photo_doctor/home_page.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 300, left: 30, bottom: 200),
              child: Text("Photo Doctor", style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
              ),),
            ),
          FloatingActionButton.extended(
            label : Text("Vamos começar"),
            backgroundColor: Colors.purple,
            elevation: 0,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage().build(context)));
            },
          )
        ],
      ),
    );
  }
}
