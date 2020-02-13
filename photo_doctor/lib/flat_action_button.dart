import 'package:flutter/material.dart';

import 'home_page.dart';

class FAButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        "Vamos começar",
        style : TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      color: Colors.purple,
    );
  }
}
