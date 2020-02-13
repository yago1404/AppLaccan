import 'dart:io';
import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

// ignore: must_be_immutable
class ExtraData extends StatefulWidget {

  File image;

  ExtraData(File file){
    this.image = file;
  }

  @override
  _ExtraDataState createState() => _ExtraDataState(this.image);
}

class _ExtraDataState extends State<ExtraData> {

  File image;
  // ignore: non_constant_identifier_names
  bool a_option = false;
  // ignore: non_constant_identifier_names
  bool b_option = false;
  // ignore: non_constant_identifier_names
  bool c_option = false;
  // ignore: non_constant_identifier_names
  bool d_option = false;
  // ignore: non_constant_identifier_names
  bool e_option = false;
  // ignore: non_constant_identifier_names
  bool f_option = false;

  _ExtraDataState(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados extras"),
        centerTitle: true,
      ),
      body: _body(),
      bottomSheet: _bottomSheet(),
    );
  }

  _body() {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text(
          "Para uma melhor acurácia da nossa analize, precisamos de algumas informações adicionais sobre o paciente. Marque as opções correspondentes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 25,),
        Text("Porcentagem de anemia"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("< 33%"),
            CircularCheckBox(value: a_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    a_option = value;
                  });
                }),
            Text("33% - 66%"),
            CircularCheckBox(value: b_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    b_option = value;
                  });
                }),
            Text("> 66%"),
            CircularCheckBox(value: c_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    c_option = value;
                  });
                }),
          ],
        ),

        SizedBox(height: 25,),
        Text("Porcentagem de outro sintoma"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("< 33%"),
            CircularCheckBox(value: d_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    d_option = value;
                  });
                }),
            Text("33% - 66%"),
            CircularCheckBox(value: e_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    e_option = value;
                  });
                }),
            Text("> 66%"),
            CircularCheckBox(value: f_option,
                activeColor: Colors.green,
                onChanged: (bool value){
                  setState(() {
                    f_option = value;
                  });
                }),
          ],
        ),

      ],
    );
  }

  _bottomSheet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          child: FlatButton(
            child: Text("Seguir",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: (){},
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
