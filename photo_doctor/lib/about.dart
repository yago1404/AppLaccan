import 'package:flutter/material.dart';
import 'package:photo_doctor/people.dart';

class About extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Sobre"),
          centerTitle: true,
          bottom: TabBar(tabs: <Widget>[
            Tab(text: "Motivação",),
            Tab(text: "Autores",),
            Tab(text: "Links externos",),
          ],
          indicatorColor: Colors.purple,),
        ),
        body: TabBarView(children: [
          _motivation(),
          _authors(),
          _links(),
        ]),
      ),
    );
  }

  _links() {
    return Container(
      child: Center(
        child: Text("Sem links no momento"),
      ),
    );
  }

  _authors() {
    return ListView(
      children: <Widget>[
        People(
            "Yago Taveiros",
            'Responssael pela criação da aplicação\ne conexãocom a API remota desenvolvida\nem pesquisa.',
            link : "yago1404",
        ),
        People(
          "André Aquino",
          'Responssael pela gerencia e orientalçao\nda pesuisa realizada no laboratorio\nlaccan',
        ),
        People(
          "Pessoa",
          'Responssael pela criação da aplicação\ne conexãocom a API remota\ndesenvolvida em pesquisa.',
        ),
        People(
            "Outra pessoa",
            'Responssael pela criação da aplicação\ne conexãocom a API remota\ndesenvolvida em pesquisa.',
        ),
        People(
            "Mais uma",
            'Responssael pela criação da aplicação\ne conexãocom a API remota\ndesenvolvida em pesquisa.',
        ),
      ],
    );
  }

  _motivation() {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Motivação",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}

