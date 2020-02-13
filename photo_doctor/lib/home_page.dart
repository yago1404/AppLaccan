import 'package:flutter/material.dart';
import 'package:photo_doctor/about.dart';
import 'package:photo_doctor/contact.dart';
import 'package:photo_doctor/how_to_use.dart';
import 'package:photo_doctor/navigator_drawer.dart';
import 'package:photo_doctor/camera.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Doctor"),
        centerTitle: true,
      ),

      body: _body(context),

      drawer: NavigatorDrawer(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

_onClickCamera(context){
    return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Camera())
  );

}


_body(context) {
  return Container(
    color: Colors.white,
    child: ListView(
          children: <Widget>[
            Image.asset("assets/images/laccan.png"),


            Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
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
                margin: EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  ListTile(
                  title: Text("Como usar"),
                  subtitle: Text("Saiba como usar o Photo Doctor para auxiliar no diagnostico de leximaniose"),
                  trailing: _buildButton("Como Usar", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HowToUse()));
                  }),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  ListTile(
                  title: Text("Contato"),
                  subtitle: Text("Entre em contato conosco para sujestões e dúvidas sobre o aplicativo"),
                  trailing: _buildButton("Contato", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
                  }),
                )
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: FlatButton(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text("Tirar uma foto",style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                color: Colors.purple,
                onPressed: () => _onClickCamera(context),
              ),
            ),

            SizedBox(height: 10,)

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

