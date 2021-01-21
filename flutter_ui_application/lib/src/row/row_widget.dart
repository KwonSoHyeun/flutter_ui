import 'package:flutter/material.dart';

class RowWidgetMainAxisAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row widget - MainAxisAlignment")),
      body: ListView(
        children: <Widget>[
          Text("Default (MainAxisAlignment.start)"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          Text("\nMainAxisAlignment.center"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              boxWidget(),
              boxWidget(),
              boxWidget(),
            ],
          ),
          Text("\nMainAxisAlignment.end"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              boxWidget(),
              boxWidget(),
              boxWidget(),
            ],
          ),
          Text("\nMainAxisAlignment.spaceEvenly"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              boxWidget(),
              boxWidget(),
              boxWidget(),
            ],
          ),
          Text("\nMainAxisAlignment.spaceBetween"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              boxWidget(),
              boxWidget(),
              boxWidget(),
            ],
          ),
          Text("\nMainAxisAlignment.spaceAround"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              boxWidget(),
              boxWidget(),
              boxWidget(),
            ],
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
