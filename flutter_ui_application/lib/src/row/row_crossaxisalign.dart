import 'package:flutter/material.dart';

class RowWidgetCrossAxisAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row widget - CrossAxisAlignment")),
      body: ListView(
        children: <Widget>[
          Text("default (CrossAxisAlignment.center)"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          Text("\nDefault (CrossAxisAlignment.start)"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          Text("\nCrossAxisAlignment.end"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          Text("\nCrossAxisAlignment.stretch"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          Text("\nCrossAxisAlignment.baseline"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text("Hello", style: TextStyle(fontSize: 50)),
                Text("Hello", style: TextStyle(fontSize: 30)),
                Text("Hello", style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
          Text("\nCrossAxisAlignment.center & MainAxisAlignment.center"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  boxWidget() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue[400],
          border: Border.all(color: Colors.indigo, width: 0.5)),
      child: Center(
          child:
              Text("Box", style: TextStyle(fontSize: 12, color: Colors.white))),
    );
  }
}
