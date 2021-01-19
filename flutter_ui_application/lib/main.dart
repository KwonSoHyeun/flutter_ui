import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 매트리얼앱을 생성하여 반환
    return MaterialApp(
        title: 'Flutter Layout Demo',
        theme: ThemeData(
          // 앱의 테마 설정
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter layout demo"),
            ),
            body: listSection()));
  }

  Widget listSection() {
    return ListView(children: <Widget>[
      Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text(
                  "Action1",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ])),
      Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(children: <Widget>[
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text(
                  "Other",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]))
    ]);
  }
}
