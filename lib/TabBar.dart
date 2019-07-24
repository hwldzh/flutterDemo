import 'package:flutter/material.dart';

void main() => runApp(DefaultTabControllerSample());

class DefaultTabControllerSample extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '选项卡一',),
    Tab(text: '选项卡二',),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tab实例展示',
      home: DefaultTabController(
        length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Tab实例展示'
              ),
              bottom: TabBar(tabs: myTabs),
            ),
            body: TabBarView(
              children: myTabs.map((Tab tab) {
                return Center(
                  child: Text(
                    tab.text,
                  ),
                );
              }).toList(),
            ),
          )
      ),
    );
  }
}