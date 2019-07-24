import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String userName;
  String password;

  void login() {
    var currentState = loginKey.currentState;
    if(currentState.validate()) {
      currentState.save();
      print('userName:$userName password:$password');

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'From表单示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form表单示例'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入用户名',
                      ),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {
                        print('$value，用户名提交了');
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      validator: (value) {
                        return value.length < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: RaisedButton(
                  onPressed: login,
                child: Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }

}