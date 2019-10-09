import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                bool dialog = await _alertDialog(context);

                if (dialog != null) {
                  print("确认删除");
                } else {
                  print("取消删除");
                }
              },
              child: Text("AlartDialog"),
            ),
            RaisedButton(
              child: Text("SimpleDialog"),
              onPressed: () async {
                var dialog = await _simpleDialog(context);
                if (dialog != null) {
                  if (dialog == 0) {
                    print("简体中文");
                  } else if (dialog == 1) {
                    print("繁体中文");
                  }
                }
              },
            ),
            RaisedButton(
              child: Text("Dialog"),
              onPressed: () async {
                var dialog = await _dialog(context);
                if (dialog != null) {
                  print("$dialog");
                }
              },
            )
          ],
        ),
      ),
    );
  }

  //AlertDialog
  Future<bool> _alertDialog(BuildContext context) {
    return showCustomDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您确定要删除当前文件吗?"),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text("确定"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("取消"),
            ),
          ],
        );
      },
    );
  }

  //SimpleDialog
  Future<int> _simpleDialog(BuildContext context) async {
    var index = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("请选择语言"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("简体中文"),
              onPressed: () {
                Navigator.pop(context, 0);
              },
            ),
            SimpleDialogOption(
              child: Text("繁体中文"),
              onPressed: () {
                Navigator.pop(context, 1);
              },
            ),
          ],
        );
      },
    );
    return index;
  }

  //dialog
  Future<int> _dialog(BuildContext context) async {
    var index = await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("请选择"),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 31,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("$index"),
                      onTap: () => Navigator.pop(context, index),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
    return index;
  }

  Future<T> showCustomDialog<T>({
    BuildContext context,
    bool barrierDismissible = true,
    WidgetBuilder builder,
  }) {
    final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, mAnim, nAnim) {
        var pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(
            builder: (context) {
              return theme == null
                  ? pageChild
                  : Theme(data: theme, child: pageChild);
            },
          ),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black26,
      transitionDuration: Duration(milliseconds: 150),
      transitionBuilder: _transitionBuilder,
    );
  }

  Widget _transitionBuilder(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // 使用缩放动画
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }
}
