
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Sobre"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body( context) {
    return Container(
      child: Center(
        child: Text("Sobre"),
      ),
    );
  }
}
