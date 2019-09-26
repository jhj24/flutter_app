import 'package:flutter/material.dart';

class InputTextValidate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputTextValidate();
  }
}

class _InputTextValidate extends State<InputTextValidate> {
  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

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
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入",
                      icon: Icon(Icons.person_outline)),
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: "密码", hintText: "请输入", icon: Icon(Icons.lock)),
                  validator: (v) {
                    return v.trim().length > 0 ? null : "密码不能为空";
                  },
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                            padding: EdgeInsets.all(5),
                            child: Text("登录"),
                            onPressed: () {
                              if ((_formKey.currentState).validate()) {
                                print(_usernameController.text);
                                print(_passwordController.text);
                              }
                            }))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
