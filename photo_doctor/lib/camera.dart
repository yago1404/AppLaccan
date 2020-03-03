import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_doctor/extra_data.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File imageFile;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Analizar foto"),
        centerTitle: true,
      ),
      body: Center(
        child: imageFile == null ? Text("Sem Imagem no momento") : _img(imageFile),
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
      imageFile = picture;
    });
    await _analyzeImage();
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
                  Navigator.push(context, MaterialPageRoute(builder:(context) => ExtraData(this.imageFile)));
                },
                child: Text("Analizar"),
              ),
            ],
          )
        ],
      ),
    );

  }

  _analyzeImage() async {
    print("\n\n");
    final FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(imageFile);
    var faceDetector = FirebaseVision.instance.faceDetector(
      FaceDetectorOptions(
        mode: FaceDetectorMode.accurate,
        minFaceSize: 0.15,
        enableLandmarks: true,
        enableClassification: true
      )
    );
    final List<Face> faces = await faceDetector.processImage(visionImage);
    print("\n\n");
    for (Face face in faces){


      final double rotY = face.headEulerAngleY; // Head is rotated to the right rotY degrees
      final double rotZ = face.headEulerAngleZ;

      print("$rotY AND $rotZ");

      final smilingProbability = face.smilingProbability;
      print("\n\n SMILY PROB $smilingProbability \n\n");
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Porbabilidade de sorriso"),
          content: Text("$smilingProbability"),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        );
      });
    }
    faceDetector.close();
  }
}