import 'package:flutter/material.dart';

//void main() => runApp(LongListDemo(List<String>.generate(500, (i)=> "Item $i")));
void main() => runApp(GridViewDemo());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView组件展示',
      home: new Scaffold(
        appBar: AppBar(
          title: Text("ListView组件展示"),
        ),
        body: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.lightBlue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Text(
                            '水平',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '列表',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0,
                          ),
                        ),
                        Icon(Icons.list),
                      ],
                    ),
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.deepPurpleAccent,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.black,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
            )
      ),
    );
  }
}

class LongListDemo extends StatelessWidget {
  final List<String> items;

  LongListDemo(this.items);

  @override
  Widget build(BuildContext context) {
    final title = '长列表示例';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  Icons.phone
                ),
                title: Text('${items[index]}'),
              );
            }
        ),
      ),
    );
  }

}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '网格列表示例';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
            primary: true,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 20.0,
            crossAxisCount: 3,
            children: <Widget>[
              const Text('第一行第一列'),
              const Text('第一行第二列'),
              const Text('第一行第三列'),
              const Text('第二行第一列'),
              const Text('第二行第二列'),
              const Text('第二行第三列'),
              const Text('第三行第一列'),
              const Text('第三行第二列'),
              const Text('第三行第三列'),
              const Text('第四行第一列'),
              const Text('第四行第二列'),
              const Text('第四行第三列'),
              const Text('第五行第一列'),
              const Text('第五行第二列'),
              const Text('第五行第三列'),
            ],
        ),
      ),
    );

  }

}