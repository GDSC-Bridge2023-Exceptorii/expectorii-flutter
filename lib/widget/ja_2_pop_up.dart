import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ヒント, 暗示あんじ。',
          style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.bold,
    )),
          content: const Text('検索と書かれた長い部分を押してみてください！',
          style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.normal,
            ),),
          actions: <Widget>[
            // TextButton(
            //   onPressed: () => Navigator.pop(context, 'Cancel'),
            //   child: const Text('Cancel'),
            // ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK',
               style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal),
            ),
        )],
        ),
      ), child: const Text('Show Dialog'),
    );
  }
}
