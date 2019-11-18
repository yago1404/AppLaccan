import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/page2.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Photo Doctor"),
        centerTitle: true,
      ),

      body: _body(context),

      drawer: _drawer(context),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
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

_drawer(context) {
  return Container(
    padding: EdgeInsets.only(top: 80),
    color: Colors.blue,
    width: 300,
    child: _buttonList(context),
  );
}

_buttonList(context) {
  return ListView(
    children: <Widget>[

      Container(
        margin: EdgeInsets.only(top : 60),
        child: RaisedButton(

          padding: EdgeInsets.only(left:0, right: 0),
          child: Text("Tirar Foto"),
          onPressed: () => _onClickCamera(context),


        ),
      ),


  //      margin: EdgeInsets.only(top: 12),
      SizedBox(
        width: 10,
        height: 50,
        child: RaisedButton(
          child: Text("Acessar galeria"),
          onPressed: (){},
        ),
      )


    ],
  );
}

_body(context) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: ListView(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Como Usar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),

            _pageView(),

            Column(
              children: <Widget>[
                _buildButton("Tirar Foto",() => _onClickCamera(context)),

                _buildButton("Usar Galeria",(){}),
              ],
            )

          ],
        ),
    );
}

_pageView() {

  return Container(
    margin: EdgeInsets.only(top : 20, bottom: 20),
    height: 300,
    child: PageView(
      children: [
        Image.asset("assets/images/imagem1.png",),
        Image.asset("assets/images/imagem2.png",),
        Image.asset("assets/images/imagem3.png",),
        Image.asset("assets/images/imagem4.png",),
      ],
    ),
  );
}

_buildButton(String buttonString, Function buttonFunction) {
  return RaisedButton(
    color: Colors.blue,
    onPressed: buttonFunction,
    child: Text(buttonString, style: TextStyle(color: Colors.white),),
  );
}

