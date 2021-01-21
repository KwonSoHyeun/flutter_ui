import 'package:flutter/material.dart';

ExpandedWidgetState pageState;

class ExpandedWidget extends StatefulWidget {
  @override
  ExpandedWidgetState createState() {
    pageState = ExpandedWidgetState();
    return pageState;
  }
}

class ExpandedWidgetState extends State<ExpandedWidget> {
  List<int> flexList = [1, 2, 3, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ExpandedWidget")),
      body: ListView(
        children: <Widget>[
          Text("Row"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: flexList[0],
                  child: boxWidget(0),
                ),
                Expanded(
                  flex: flexList[1],
                  child: boxWidget(1),
                ),
                Expanded(
                  flex: flexList[2],
                  child: boxWidget(2),
                ),
              ],
            ),
          ),
          Text("\nColumn"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 300,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: flexList[3],
                  child: boxWidget(3),
                ),
                Expanded(
                  flex: flexList[4],
                  child: boxWidget(4),
                ),
                Expanded(
                  flex: flexList[5],
                  child: boxWidget(5),
                ),
              ],
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.orange,
              child: Text("reset", style: TextStyle(color: Colors.white)),
              onPressed: () {
                setState(() {
                  flexList = [1, 1, 1, 1, 1, 1];
                });
              },
            ),
          )
        ],
      ),
    );
  }

  boxWidget(int flexIndex) {
    return GestureDetector(
      child: Container(
//      height: 30,
//      width: 50,
        decoration: BoxDecoration(
            color: Colors.blue[400],
            border: Border.all(color: Colors.indigo, width: 0.5)),
        child: Center(
            child: Text("flex: ${flexList[flexIndex]}",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
      ),
      onTap: () {
        print(flexIndex);
        setState(() {
          flexList[flexIndex] = flexList[flexIndex] + 1;
        });
      },
    );
  }
}
