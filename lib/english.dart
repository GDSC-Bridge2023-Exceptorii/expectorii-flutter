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
  bool isKorean = false;
  bool isJapanese = false;
  late List<bool> isSelected = [isKorean, isJapanese];

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey,
    body: Column(
      children: [
        Stack(
          children: const [
            Image(
              image: AssetImage('lib/assets/rectangle.png'),
              width: 400,
              height: 180,
            ), // Background image
            Text(
              "Hello.",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10), // Margin
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                minimumSize: const Size(50, 30),
                // Rounding the button
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                "Korea",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10), // Margin
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                minimumSize: const Size(50, 30),
                // Rounding the button
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                "Japan",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 5), // Margin
        const Text(
          "What can be done in __",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
}




// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   bool isKorean = false;
//   bool isJapanese = false;
//   late List<bool> isSelected = [isKorean, isJapanese];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Column(
//         children: [
//           Stack(
//             children: const [
//               Image(
//                 image: AssetImage('lib/assets/rectangle.png'),
//                 width: 400,
//                 height: 180,
//               ), // 배경 이미지
//               Text(
//                 "안녕하세요.",
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10), // 여백
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   backgroundColor: Colors.white,
//                   minimumSize: const Size(50, 30),
//                   // 버튼을 둥글게 처리
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//                 child: const Text(
//                   "한국",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 onPressed: () {},
//               ),
//               const SizedBox(width: 10), // 여백
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   backgroundColor: Colors.white,
//                   minimumSize: const Size(50, 30),
//                   // 버튼을 둥글게 처리
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//                 child: const Text(
//                   "일본",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//           const SizedBox(height: 5), // 여백
//           const Text(
//             "__에서 할 수 있는 일",
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 60), // 여백
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Stack(
//                 children: <Widget>[
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.black,
//                       backgroundColor: Colors.white,
//                       minimumSize: const Size(360, 150),
//                       // 버튼을 둥글게 처리
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text(
//                       "앱 사용법",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => const WayToUse()),
//                       );
//                     },
//                   ),
//                   const Text("안녕"),
//                 ],
//               ),

//               const SizedBox(height: 20), // 여백
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   backgroundColor: Colors.white,
//                   minimumSize: const Size(360, 150),
//                   // 버튼을 둥글게 처리
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//                 child: const Text(
//                   "일본",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void toggleSelect(value) {
//     if (value == 0) {
//       isKorean = true;
//       isJapanese = false;
//     } else {
//       isKorean = false;
//       isJapanese = true;
//     }
//     setState(() {
//       isSelected = [isKorean, isJapanese];
//     });
//   }
// }
