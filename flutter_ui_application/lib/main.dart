import 'package:flutter/material.dart';
import 'src/route/secondpage.dart';

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
// Scaffold(
//     appBar: AppBar(
//       title: Text("Flutter layout demo"),
//     ),
//     body: Column(children: <Widget>[
//       Container(
//         margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
//         child: RaisedButton(
//           color: Colors.blueGrey[300],
//           child: Text(
//             "Cloud Firestore",
//             style: TextStyle(color: Colors.white),
//           ),
//           onPressed: () {
//             //Navigator.push(context,
//             //   MaterialPageRoute(builder: (context) => SecondRoute()));

//             Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => SecondRoute()));
//           },
//         ),
//       ),
//       Container(
//           margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
//           child: Column(children: <Widget>[])),
//       Container(
//           margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
//           child: Column(children: <Widget>[
//             Container(
//               height: 50,
//               decoration: BoxDecoration(color: Colors.amber),
//               child: Center(
//                 child: Text(
//                   "Other",
//                   style: TextStyle(
//                       color: Colors.blueGrey,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ]))
//     ])));
