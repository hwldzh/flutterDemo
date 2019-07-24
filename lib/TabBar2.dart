import 'package:flutter/material.dart';

void main() => runApp(TabBarSample());

class ItemView {
  final String title;
  final IconData icon;
  const ItemView({this.title, this.icon});
}

const List<ItemView> items = <ItemView>[
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

class TabBarSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
                'TabBar实例展示'
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((itemView) {
                return Tab(
                  text: itemView.title,
                  icon: Icon(
                    itemView.icon
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: items.map((itemView) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: SelectedView(item: itemView,),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class SelectedView extends StatelessWidget {
  final ItemView item;

  SelectedView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon, size: 128, color: textStyle.color,),
            Text(
              item.title, style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}