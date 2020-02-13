
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_doctor/extra_data.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File image;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Analizar foto")
      ),
      body: Center(
        child: image == null ? Text("Sem Imagem no momento") : _img(image),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (){
          return _takePicture();
        },
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  _takePicture() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState((){
      image = picture;
    });
  }

  _img(File image) {
    return Container(
      margin: EdgeInsets.only(top:30, left: 15, right: 15),
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Foto selecionada",
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child : Image.file(image, width: 350, fit: BoxFit.contain,)
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                color: Colors.purple,
                textColor: Colors.white,

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => ExtraData(this.image)));
                },
                child: Text("Analizar"),
              ),
            ],
          )
        ],
      ),
    );

  }
}