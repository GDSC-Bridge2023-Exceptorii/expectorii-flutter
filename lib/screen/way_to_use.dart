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
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.white,
          ),
          ListView.builder(
            scrollDirection:
                Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열
            itemCount: 3, //리스트의 개수
            itemBuilder: (BuildContext context, int index) {
              //리스트의 반목문 항목 형성
              return Container(
                height: 70,
                color: Colors.green[index * 200],
                alignment: Alignment.center,
                child: Text('item : $index'),
              );
            },
          ),
        ],
      ),
    );
  }
}
