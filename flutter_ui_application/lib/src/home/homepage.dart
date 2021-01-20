import 'package:flutter/material.dart';
import 'package:flutter_ui_application/src/route/secondpage.dart';
import 'package:flutter_ui_application/src/row/row_widget.dart';

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
          ListTile(
            title: Text("Other menus"),
            onTap: () {},
          )
        ].map((child) {
          return Card(
            child: child,
          );
        }).toList(),
      ),
    );
  }
}
