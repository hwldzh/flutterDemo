import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text("容器示例组件"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 200.0,
            height: 200.0,
            //添加边框装饰效果
            decoration: BoxDecoration(
              color: Colors.white, //边框背景色
              //设置上下左右四个边框样式
              border: Border.all(
                color: Colors.grey, //边框颜色
                width: 8.0, //边框粗细
              ),
              borderRadius:
                const BorderRadius.all(const Radius.circular(8.0)), //边框的弧度
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 28.0),
            ),
          )
        ),
      ),);
  }
}