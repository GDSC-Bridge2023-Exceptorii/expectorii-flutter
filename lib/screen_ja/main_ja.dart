import 'package:flutter/material.dart';
import '../main.dart';
import 'camera_ja.dart';
import 'google_app_ja.dart';
import 'way_to_use_ja.dart';
import 'list_view_page_ja.dart';

class MainJa extends StatefulWidget {
  const MainJa({super.key});

  @override
  _MainJaState createState() => _MainJaState();
}

class _MainJaState extends State<MainJa> {
  bool isKorean = true;
  bool isJapanese = false;
  late List<bool> isSelected = [isKorean, isJapanese];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F5FC),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 240,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/rectangle.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              const Positioned(
                top: 45,
                child: SizedBox(
                  width: 350,
                  height: 150,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'こんにちは！\nデジタル教育をお手伝いします',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10), // 여백
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize: const Size(50, 30),
                  // 버튼을 둥글게 처리
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "한국",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MainPage()),
                  );
                },
              ),
              const SizedBox(width: 10), // 여백
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize: const Size(50, 30),
                  // 버튼을 둥글게 처리
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "日本",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 30),
            ],
          ),

          const SizedBox(height: 80), // 여백
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "     Eldyでできること",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100, height: 40),
            ],
          ),

          const SizedBox(height: 10), // 여백
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xffFFA338),
                      minimumSize: const Size(300, 100),
                      maximumSize: const Size(360, 140),
                      // 버튼을 둥글게 처리
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image(
                            image: AssetImage('lib/assets/arrow.png'),
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(height: 30), // 여백
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "アプリの使い方",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "モバイルアプリの使用の難しさを解決します!",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ListviewPageJa()),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20), // 여백
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xff077690),
                  minimumSize: const Size(300, 100),
                  maximumSize: const Size(360, 140),
                  // 버튼을 둥글게 처리
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image(
                        image: AssetImage('lib/assets/arrow.png'),
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(height: 10), // 여백
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "ニュースを見る",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "ニュースの要約からフェイクニュースの判別までお手伝いします!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CameraExampleJa(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toggleSelect(value) {
    if (value == 0) {
      isKorean = true;
      isJapanese = false;
    } else {
      isKorean = false;
      isJapanese = true;
    }
    setState(() {
      isSelected = [isKorean, isJapanese];
    });
  }
}
