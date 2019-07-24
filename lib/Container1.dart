import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件展示',
      home: LayoutDemo(),
    );
  }

}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器组件展示'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/1.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/2.jpg'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/3.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                      border: Border.all(width: 10.0, color: Colors.blueGrey),
                    ),
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset('images/2.jpg'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );

  }

}