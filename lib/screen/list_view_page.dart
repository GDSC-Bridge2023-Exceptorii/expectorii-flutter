import 'package:expectorii/screen/google_app.dart';
import 'package:expectorii/screen/woori_app.dart';
import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({
    Key? key,
  }) : super(key: key);

  @override
  _ListviewPageState createState() => _ListviewPageState();
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
  'lib/assets/wooribank.png',
  'lib/assets/kakao.png',
  'lib/assets/tmoney.png',
  'lib/assets/naver.png',
];

class ProductModel {
  const ProductModel(this.title, this.desc1);
  final String title;
  final String desc1;
}

const productList = [
  ProductModel("구글", "검색에 대해 배울 수 있어요."),
  ProductModel("우리은행", "송금에 대해 배울 수 있어요."),
  ProductModel("카카오톡", "대화에 필요한 기능을 배울 수 있어요."),
  ProductModel("티머니", "버스 예매에 대해 배울 수 있어요."),
  ProductModel("네이버지도", "교통 정보에 대해 확인할 수 있어요."),
];

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('앱 사용법'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: const Text(
              "모바일 앱 사용에 대해 배워봅시다.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.white,
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
                              margin: const EdgeInsets.only(top: 20),
                              color: Colors.white,
                              width: 200,
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(imageIcon[index]),
                                  ),
                                  const SizedBox(width: 10), // 여백
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
