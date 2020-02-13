
import 'package:flutter/material.dart';
import 'flat_action_button.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child:Center(
          child: Text(
            "Photo Doctor",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 50,
            ),
          ),
        ),
      ),
      floatingActionButton: FAButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
