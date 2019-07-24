import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: '图标组件示例',
    home: RaisedButtonDemo(),
  )
);

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图标组件示例"),
      ),
      body: new Icon(
        Icons.phone, color: Colors.green, size: 80.0,
      ),
    );
  }
}

class IconButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标组件示例'),
      ),
      body: Center(
          child: IconButton(
            icon: Icon(Icons.volume_up, size: 48.0,),
            tooltip: '按下操作',
            onPressed: () {
              print('按下操作');
            },
          )
      )
    );
  }

}

class RaisedButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RaisedButton组件示例"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            print("按下操作");
          },
          child: Text("RaisedButton"),
        ),
      ),
    );
  }
}