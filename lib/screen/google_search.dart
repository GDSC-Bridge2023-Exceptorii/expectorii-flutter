import 'package:flutter/material.dart';

class GoogleSearch extends StatelessWidget {
  const GoogleSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "마이페이지",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0, // 앱 바가 떠있는 효과 제거
      ),
      body: Center(
        child: const Text("마이페이지 화면"),
      ),
    );
  }
}
