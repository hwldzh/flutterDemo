import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FittedBox实例展示',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FittedBox实例展示"
          ),
        ),
        body: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.grey,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
            child: Container(
              color: Colors.deepOrange,
              child: Text(
                "缩放布局",
              ),
            ),
          ),
        ),
      ),
    );
  }

}