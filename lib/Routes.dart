import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MateriaApp示例',
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MateriaApp示例'),
      ),
      body: Center(
        child: Text(
          '主页',
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }

}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
              '这是第一页',
              style: TextStyle(
                fontSize: 28.0,
              ),
          ),
        ),
      )
    );
  }

}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('第二页'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: Text(
              '这是第二页',
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
          ),
        )
    );
  }

}