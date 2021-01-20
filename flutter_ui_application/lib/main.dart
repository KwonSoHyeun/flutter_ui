import 'package:flutter/material.dart';
import 'src/route/secondpage.dart';
import 'src/row/row_widget.dart';

void main() => runApp(MyApp());

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Firebase")),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Page 이동"),
            subtitle: Text("다른 페이지로의 이동테스트입니다."),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondRoute()));
            },
          ),
          ListTile(
            title: Text("Row widget"),
            subtitle: Text("가로 배열 레이아웃입니다."),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RowWidgetMainAxisAlignment()));
            },
          ),

          //
          ListTile(
            title: Text("Other menus"),
            onTap: () {},
          ),
        ].map((child) {
          return Card(
            child: child,
          );
        }).toList(),
      ),
    );
  }
}
