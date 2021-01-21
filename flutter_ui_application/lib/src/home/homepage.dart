import 'package:flutter/material.dart';
import 'package:flutter_ui_application/src/route/secondpage.dart';
import 'package:flutter_ui_application/src/row/row_widget.dart';
import 'package:flutter_ui_application/src/row/row_crossaxisalign.dart';
import 'package:flutter_ui_application/src/row/flex_widget.dart';

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
            subtitle: Text("가로 배열 레이아웃내 좌우, 간격 정렬입니다."),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RowWidgetMainAxisAlignment()));
            },
          ),
          ListTile(
              title: Text("Row widget alignment"),
              subtitle: Text("가로 배열 레이아웃 상하 정렬입니다."),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RowWidgetCrossAxisAlignment()));
              }),
          ListTile(
              title: Text("Flex widget alignment"),
              subtitle: Text("가로, 세로 비율 정렬입니다."),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExpandedWidget()));
              })
        ].map((child) {
          return Card(
            child: child,
          );
        }).toList(),
      ),
    );
  }
}
