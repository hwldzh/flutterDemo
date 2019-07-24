import 'package:flutter/material.dart';

void main() => runApp(LayoutDemo());

class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox展示示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SizedBox展示示例'
          ),
        ),
        body: SizedBox(
          width: 200,
          height: null,
          child: Card(
            child: Text(
              'SizedBox',
              style: TextStyle(
                fontSize: 106.0,

              ),
            ),
          ),
        ),
      ),
    );
  }
}