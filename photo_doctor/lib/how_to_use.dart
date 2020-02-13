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
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
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
            Container(
              child:
                Text("Basta ir na pagina principal do aplicativo e clicar em tirar uma foto",)
            ),
            _space(20),
            Container(
              child: Image.asset("assets/images/takebutton.png", fit: BoxFit.contain,)
            ),
            _space(20),
            Container(
              child:
                Text("Você será redirecionado para uma tela com a mensagem 'Sem imagem no momento' basta clicar no botão no canto inferior direito")
            ),
            Container(
              child:
                Image.asset("assets/images/instruction2.png", fit: BoxFit.contain,)

            ),
            _space(20),
            Container(
              child:
                Text("Logo apos será aberto a câmera compativel com seu smartphone\n\n\nOBS.: na primeira vez que utilizar a câmera do photo doctor será feito um pre-cache então a foto que você tirar na primeira vez não será carregada mas após isso basta fechar a câmera e abrir novamente que conseguira usalo normalmente")
            ),
            _space(20),
            Container(
              child:
                Text("Logo apos, uma tela como essa será renderizada")

            ),
            _space(20),
            Container(
              child:
                Image.asset("assets/images/instruction3.png", fit: BoxFit.contain,)
            ),
            _space(20),
            Container(
              child:
                Text("Basta tocar em analizar para que possamos classificar a foto, ou novamente na câmera para repetir o processo")
            ),
            _space(30)
          ],
        ),
      ),
    );
  }

  _space(double size) {
    return SizedBox(
      height: size,
    );
  }
}
