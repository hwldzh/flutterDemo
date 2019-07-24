import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '图片展示示例title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('图片展示示例'),
        ),
        body: Center(
          child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562858750609&di=a4b9592468765361a65d173a35568abe&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F18%2F01%2F21%2F2f86f3c48d5855d5f51eade250b6be0b.jpg%2521%2Ffwfh%2F804x804%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue'
              , fit: BoxFit.fitWidth, width: 200, height: 200,),
        ),
      )
    );
  }

}