import 'package:flutter/material.dart';

class WooriApp extends StatelessWidget {
  const WooriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "우리은행 사용법",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0, // 앱 바가 떠있는 효과 제거
      ),
      body: const Center(
        child: Text("우리은행 페이지"),
      ),
    );
  }
}
