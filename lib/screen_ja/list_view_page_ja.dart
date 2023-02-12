import 'package:expectorii/screen/google_app.dart';
import 'package:expectorii/screen/woori_app.dart';
import 'package:flutter/material.dart';

class ListviewPageJa extends StatefulWidget {
  const ListviewPageJa({
    Key? key,
  }) : super(key: key);

  @override
  _ListviewPageJaState createState() => _ListviewPageJaState();
}

const navigatorList = [
  GoogleApp(),
  WooriApp(),
  GoogleApp(),
  GoogleApp(),
  GoogleApp(),
];

const imageIcon = [
  'lib/assets/google.png',
  'lib/assets/japan_bank.png',
  'lib/assets/line.png',
  'lib/assets/Mask group.png',
  'lib/assets/dis.png',
];

class ProductModel {
  const ProductModel(this.title, this.desc1);
  final String title;
  final String desc1;
}

const productList = [
  ProductModel("グーグル", "検索について学ぶことができます。"),
  ProductModel("三井住友", "送金について学ぶことができます。"),
  ProductModel("ライン", "会話に必要な機能を学ぶことができます。"),
  ProductModel("ナビタイム", "バスの前売りについて学ぶことができます。"),
  ProductModel("グーグルマップ", "交通情報の確認について学ぶことができます。"),
];

class _ListviewPageJaState extends State<ListviewPageJa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F5FC),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        centerTitle: true,
        title: const Text('アプリの使い方',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Color(0xffF2F5FC),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30), // 여백
          Container(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 70, right: 70),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: const Text(
              "モバイルアプリの使い方について学びましょう！",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Color(0xffF2F5FC),
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                      itemCount: productList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => navigatorList[index]),
                            );
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                              width: 200,
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const SizedBox(width: 5), // 여백
                                  Image(
                                    image: AssetImage(imageIcon[index]),
                                  ),
                                  const SizedBox(width: 20), // 여백
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productList[index].title,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            margin:
                                            const EdgeInsets.only(top: 10),
                                            child: Text(
                                              productList[index].desc1,
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        );
                      })),
            ],
          )
        ],
      ),
    );
  }
}
