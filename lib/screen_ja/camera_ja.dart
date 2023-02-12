import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class CameraExampleJa extends StatefulWidget {
  const CameraExampleJa({Key? key}) : super(key: key);

  @override
  CameraExampleJaState createState() => CameraExampleJaState();
}

class CameraExampleJaState extends State<CameraExampleJa> {
  File? _image;
  final picker = ImagePicker();

  // 비동기 처리를 통해 카메라와 갤러리에서 이미지를 가져온다.
  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image에 저장
      hitAPI();
      //sendImagePng(Image.file(File(_image!.path)));
      //sendImage(_image!.readAsBytes() as Uint8List);
    });
  }

  // 이미지를 보여주는 위젯
  Widget showImage() {
    return Container(
        color: const Color(0xffd0cece),
        width: MediaQuery.of(context as BuildContext).size.width,
        height: MediaQuery.of(context as BuildContext).size.width,
        child: Center(
            child: _image == null
                ? const Text('No image selected.')
                : Image.file(File(_image!.path))));
  }

  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      backgroundColor: const Color(0xfff4f3f9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 25.0),
          showImage(),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // 카메라 촬영 버튼
              FloatingActionButton(
                tooltip: 'pick Iamge',
                onPressed: () async {
                  getImage(ImageSource.camera);
                },
                child: const Icon(Icons.add_a_photo),
              ),

              // 갤러리에서 이미지를 가져오는 버튼
              FloatingActionButton(
                tooltip: 'pick Iamge',
                onPressed: () {
                  getImage(ImageSource.gallery);
                },
                child: const Icon(Icons.wallpaper),
              ),

              // Send image button
              FloatingActionButton(
                tooltip: 'Send Image',
                onPressed: () {},
                child: const Icon(Icons.send),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> hitAPI() async {
  try {
    final response = await http.get(
      'https://4652-35-233-212-191.ngrok.io/' as Uri,
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      print('Translated summary: hit!');
    } else {
      throw Exception('Failed to send image');
    }
  } catch (e) {}
}

Future<void> sendImagePng(Image imageFile) async {
  try {
    final response = await http.post(
      'https://4652-35-233-212-191.ngrok.io/images-OCR/' as Uri,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      body: Image,
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final translatedSummary = responseBody['string'];
      print('Translated summary: $translatedSummary');
    } else {
      throw Exception('Failed to send image');
    }
  } catch (e) {}
}

Future<void> sendImage(Uint8List binaryImage) async {
  try {
    final response = await http.post(
      'https://4652-35-233-212-191.ngrok.io/images-OCR/' as Uri,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      body: binaryImage,
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final translatedSummary = responseBody['string'];
      print('Translated summary: $translatedSummary');
    } else {
      throw Exception('Failed to send image');
    }
  } catch (e) {}
}
