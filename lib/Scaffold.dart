import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold展示示例',
      home: Scaffold(
        appBar: AppBar(
          title : Text(
            'Scaffold展示示例',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '搜索',
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '添加',
              onPressed: (){},
            ),
          ],
          leading: IconButton(
              icon: Icon(Icons.arrow_back), onPressed: null
          ),
        ),
        body: Center(
          child: Text(
            'Scaffold',
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 10.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: '增加',
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}