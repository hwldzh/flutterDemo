import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "导航页面示例",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "导航页面示例",
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen();
            }));
          },
          child: Text(
            '查看商品详情页面'
          ),
        )
      ),
    );

  }

}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "导航页面示例"
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
              '返回页面'
          ),
        ),
      )
    );

  }
}