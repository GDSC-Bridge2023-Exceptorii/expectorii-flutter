import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expectorii',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SuccessPage(),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(width: 1800), // 여백
          const Text(
            'よくできました！',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          const Icon(
            Icons.check_circle,
            color: Colors.orange,
            size: 80,
          ),
          const SizedBox(height: 40),
          const Text(
            '検索機能を学びました！\n今のようにじっくり直接検索してみましょう！',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () {
              // Add your code here to handle OK button press
            },
            child: const Text(
              'OK',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
