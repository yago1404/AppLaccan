import 'package:flutter/material.dart';

// ignore: must_be_immutable
class People extends StatelessWidget {

  String name;
  String content;
  String link;

  People(String name, String content, {String link}){
    this.name = name;
    this.content = content;
    this.link = link;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        margin:   EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
        height: 200,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: new Offset(10.0, 10.0),
                blurRadius: 10,
              )
            ],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow, Colors.red])
        ),
        child: _info(this.content)
    );
  }

  _info(content) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black26,
                      offset: Offset(5,5),
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child:  Text(
              content,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black26,
                      offset: Offset(5,5),
                    )
                  ]
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.alternate_email, color: Colors.white,),
              Text(
                this.link != null ? link : "",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black26,
                        offset: Offset(5,5),
                      )
                    ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }


}



