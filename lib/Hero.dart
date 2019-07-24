import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Hero动画展示",
  home: FirstPage(),
));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hero动画展示'
        ),
      ),
      body: GestureDetector(
        child: Hero(
          tag: '第一张图片',
          child: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563687865177&di=f9a8ff77efd1351350dd282f4d2f6658&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F0db5c8e539e1e0b095f207682500ad136fb38a642aad-Xr4FmS_fw658"
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
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
          'Hero动画展示'
        ),
      ),
      body: GestureDetector(
        child: Hero(
          tag: '第二张图片',
          child: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563687865176&di=9e7b80a109aaae3569be76da5994fabb&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F28a4962c297205e0868cdb45bb527e2bc5319f08f019-l7N1A3_fw658"
          ),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}