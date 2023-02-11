import 'package:flutter/material.dart';
import 'screen/camera.dart';
import 'screen/list_view_page.dart';

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
      backgroundColor: const Color(0xffF2F5FC),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 360,
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
                top: 20,
                child: SizedBox(
                  width: 350,
                  height: 230,
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
                  minimumSize: const Size(80, 50),
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
                  minimumSize: const Size(80, 50),
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

          const SizedBox(height: 50), // 여백
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Text(
                "ELDY에서 할 수 있는 일",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 140),
              SizedBox(height: 100),
            ],
          ),

          const SizedBox(height: 10), // 여백
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xffFFA338),
                  minimumSize: const Size(360, 150),
                  // 버튼을 둥글게 처리
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Stack(
                  children: const [
                    /*
                    Image(
                      image: AssetImage('lib/assets/arrow.png'),
                      width: 80,
                      height: 80,
                    ),
                    */
                    Text(
                      "앱 사용법",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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

              const SizedBox(height: 20), // 여백
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xff077690),
                  minimumSize: const Size(360, 150),
                  // 버튼을 둥글게 처리
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "뉴스 살펴보기",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
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
