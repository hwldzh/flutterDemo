import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appName='自定义标题';

    return MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[600],
        accentColor: Colors.black
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key : key);

  jumpBaidu() {
    http.get('http://httpbin.org/').then((response) {
      print("状态：${response.statusCode}");
      print("正文：${response.body}");
    });
  }

  getWeather() async {
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100"));
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    } catch(e) {
      print("请求失败：$e");
    } finally {

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
              '带有背景颜色的文本组件',
              style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.blue),
          child: new FloatingActionButton(
            onPressed: getWeather,
            child: Icon(Icons.backspace))
      ),
    );
  }


}