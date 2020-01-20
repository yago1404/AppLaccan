import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
      child: ListView(
        children: <Widget>[
          _card(context, "Yago Taveiros", "responsavel pela desenvolvimento da aplicação", "ytf@laccan.ufal.br"),
          SizedBox(height: 15,),
          _card(context, "Andre L L aquino", "Cordenação do laboratorio de pesquisa laccan", "alla@laccan.ufal.br"),
        ],
      ),
    );
  }

  _card(context, String name, String function, String email) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text(name),
        subtitle: Text(function),
        trailing: _contacts( email),
      ),
    );
  }

  _contacts(String email) {
    return Container(
      child: Text("Email:\n"+email),
    );
  }
}
