import 'package:flutter/material.dart';

class WayToUse extends StatelessWidget {
  const WayToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "앱 사용법",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.white,
      ),
    );
  }
}
