import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Como usar"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: <Widget>[
          _content()
        ],
      ),
    );
  }

  _content() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Como tirar uma foto",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Text("Basta ir na pagina principal do aplicativo e clicar\nem tirar uma foto")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Image.asset("assets/images/takebutton.png")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Text("Você será redirecionado para uma tela com a\nmensagem 'Sem imagem no momento' basta\nclicar no botão no canto inferior direito")
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset("assets/images/instruction2.png")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Text("Logo apos será aberto a cámera compativel com\nseu smartphone\n\n\nOBS.: na primeira vez que utilizar a cámera do\nphoto doctor será feito um pre-cache então\na foto que você tirar na primeira vez não sera carregada\nmas após isso basta fechar a cámera e abrir de novo\nque conseguira usalo normalmente")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Text("Logo apos, uma tela como essa será renderizada")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Image.asset("assets/images/instruction3.png")
            ],
          ),
          _space(20),
          Row(
            children: <Widget>[
              Text("Basta tocar em analizar para que possamos\nclassificar a foto, ou novamente na cámera para\nrepetir o processo")
            ],
          ),
          _space(30)
        ],
      ),
    );
  }

  _space(double size) {
    return SizedBox(
      height: size,
    );
  }
}
