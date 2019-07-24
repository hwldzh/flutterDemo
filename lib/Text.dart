import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '文本组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本组件示例'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              '红色+黑色删除线+25号',
              style: TextStyle(
                color: const Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xff000000),
                fontSize: 25.0,
              ),
            ),
            new Text(
                '橙色+下划线+24号',
                style: new TextStyle(
                  color: const Color(0xffff9900),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xffff9900),
                  fontSize: 24.0,
                ),
            ),
            Text(
              '虚线上划线+23号+倾斜',
              style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '23号+加粗',
              style: TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}