import 'package:flutter/material.dart';

main() => runApp(const NaviTimeScreen());
class NaviTimeScreen extends StatelessWidget {
  const NaviTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Eldy",
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "Navitimeの使い方",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffF2F5FC),
        ),
        body: _NavitimeScreenState(),
      ),
    )
  }

}

class _NavitimeScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Navitimeの主な機能"),
            Text("Navitimeは移動時間の推定と最適な経路の確認ができるナビゲーションアプリです。"),
            Text("地図上で経路を確認したり、公共交通機関の情報を確認することもできます。"),
            Text("また、目的地までの最適な経路を提案することもできます。"),
            Text("さらに、現在地から目的地までの歩いている時間や、タクシーやバスの情報も提供します。"),
          ],
        ),
      ),
    );
  }
}


