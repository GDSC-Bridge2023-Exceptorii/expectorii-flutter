import 'package:flutter/material.dart';

void main() {
  runApp(const KSuccessPage());
}

class KSuccessPage extends StatelessWidget {
  const KSuccessPage({super.key});

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
            '잘했어요!',
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
            '검색 기능을 배웠어요!\n지금처럼 찬찬히 직접 검색을 해보아요!',
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
              '확인',
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
