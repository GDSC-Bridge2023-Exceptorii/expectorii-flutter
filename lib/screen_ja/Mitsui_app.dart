import 'package:flutter/material.dart';

void main() {
  runApp(const MitsuiApp());
}

class MitsuiApp extends StatefulWidget {
  const MitsuiApp({
    Key? key,
  }) : super(key: key);

  @override
  _MitsuiAppState createState() => _MitsuiAppState();
}

class _MitsuiAppState extends State<MitsuiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "銀行アプリの使い方",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffF2F5FC),
        ),
        body: Container(
          child: Column(
        children: const [
          SizedBox(height: 30), // Space
          Center(
            child: Text("口座履歴を見るにはこのアイコンをクリックしてください"),
          ),
          Center(
            child: Icon(Icons.history),
          ),
          SizedBox(height: 10), // Space
          Center(
            child: Text("誰かに銀行経由で支払うにはこのアイコンをクリックしてください"),
          ),
          Center(
            child: Icon(Icons.payment),
          ),
        ],


          ),
        ),
      ),
    );
  }
}


