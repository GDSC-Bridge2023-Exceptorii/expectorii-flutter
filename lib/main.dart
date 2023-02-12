import 'package:expectorii/screen/camera.dart';
import 'package:flutter/material.dart';
import 'screen/way_to_use.dart';
import 'screen/list_view_page.dart';
import 'screen_ja/main_ja.dart';

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
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                      '안녕하세요!\n디지털 교육을 도와드려요!',
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
                onPressed: () {},
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MainJa()),
                  );
                },
              ),
              const SizedBox(width: 30),
            ],
          ),

          const SizedBox(height: 80), // 여백
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                "     엘디에서 할 수 있는 일",
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
                            "앱 사용법",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "모바일 앱 사용에 어려움을 해결해 드려요!",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ListviewPage()),
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
                    SizedBox(height: 30), // 여백
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "뉴스 살펴보기",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "뉴스 요약부터 가짜 뉴스 판별까지 도와드려요!",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CameraExample()),
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
