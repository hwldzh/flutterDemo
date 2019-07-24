import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transform实例展示',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Transform实例展示',
          ),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            child: Transform(
                alignment: Alignment.topLeft,
                transform: Matrix4.rotationX(3.14 * 2 / 4 * 2),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFFE8581C),
                  child: const Text('Transfrom矩阵变换'),

                ),
            ),
          ),
        ),
      ),
    );
  }

}