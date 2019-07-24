import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "返回数据示例",
  home: FirstPage(),
));

class FirstPage extends StatelessWidget {
  var _scaffoldkey = new GlobalKey<ScaffoldState>();

  _navigatorToSecondPage (BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
//    _scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('$result')));
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '第一个页面'
        ),
      ),
      body: Builder(
        builder: (context) {
          return Center(
              child: RaisedButton(
                onPressed: () => _navigatorToSecondPage(context),
                child: Text(
                    '跳转到第二个页面'
                ),
              )
          );
        },
      ),
    );
  }

}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '第二个页面'
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context, "hi flutter"),
          child: Text('返回第一个页面'),
        ),
      ),
    );
  }

}