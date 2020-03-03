import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        centerTitle: true,
        leading: _homeButton(context),
      ),
    );
  }

  _homeButton(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.home, color: Colors.white,),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }
}
