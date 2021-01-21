import 'package:flutter/material.dart';

// 두번째 라우트
class SecondRouteParam extends StatelessWidget {
  final String fruit;

  SecondRouteParam(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(color: Colors.indigoAccent),
                alignment: Alignment(0, 0),
                child: Text(
                  fruit,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
