import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_doctor/about.dart';
import 'package:photo_doctor/navigator_drawer.dart';
import 'package:photo_doctor/page2.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Photo Doctor"),
        centerTitle: true,
      ),

      body: _body(context),

      drawer: NavigatorDrawer(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.purple,
        onPressed: () => _onClickCamera(context),
      ),

    );
  }
}

_onClickCamera(context) {
    return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Page2())
  );

}


_body(context) {
  return Container(
    color: Colors.white,
    child: ListView(
          children: <Widget>[
            Image.asset("assets/images/laccan.png"),


            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  ListTile(
                  title: Text("Sobre"),
                  subtitle: Text("Saiba mais sobre o projeto do Photo Doctor e sobre seus idealizadores"),
                  trailing: _buildButton("Sobre", (){Navigator.push(context, MaterialPageRoute(builder: (context) => About()));}),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  ListTile(
                  title: Text("Como usar"),
                  subtitle: Text("Saiba como usar o Photo Doctor para auxiliar no diagnostico de leximaniose"),
                  trailing: _buildButton("Como Usar", (){}),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  ListTile(
                  title: Text("Contato"),
                  subtitle: Text("Entre em contato conosco para sujestões e dúvidas sobre o aplicativo"),
                  trailing: _buildButton("Contato", (){}),
                )
            ),


          ],
        ),
    );
}


_buildButton(String buttonString, Function buttonFunction) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.5)
    ),
    color: Colors.purple,
    onPressed: buttonFunction,
    child: Text(buttonString, style: TextStyle(color: Colors.white),),
  );
}

