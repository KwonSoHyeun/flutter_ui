import 'package:flutter/material.dart';

// 두번째 라우트
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Layout Demo sub',
        theme: ThemeData(
          // 앱의 테마 설정
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Second Route'),
          ),
          body: Center(
            // RiasedButton을 등록
            child: RaisedButton(
              child: Text('Go back!'),
              onPressed: () {
                // 버튼이 눌렸을 때 처리
                Navigator.pop(context); // 현재 라우트를 pop하여 제거함
              },
            ),
          ),
        ));
  }
}
