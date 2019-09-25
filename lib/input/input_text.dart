import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputText();
  }
}

class _InputText extends State<InputText> {
  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(() {
      print(_usernameController.text);
    });

    _passwordController.addListener(() {
      print(_passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    _usernameController.text = "jhj";
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text("登录"),
          actions: <Widget>[Icon(Icons.menu)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  icon: Icon(Icons.person_outline),
                  labelText: "登录名",
                  hintText: "请输入"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "密码", hintText: "请输入"),
            ),
            RaisedButton(
              child: Text("登录"),
              color: Colors.blue,
              disabledColor: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                print(_usernameController.text);
                print(_passwordController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
