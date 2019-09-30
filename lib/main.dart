import 'package:flutter/material.dart';
import 'package:flutter_app/async_refresh_ui.dart';
import 'package:flutter_app/async_stream_refresh_ui.dart';
import 'package:flutter_app/input/input_text.dart';
import 'package:flutter_app/input/input_text_validate.dart';
import 'package:flutter_app/my_decorated_box.dart';
import 'package:flutter_app/my_progress_indicator.dart';
import 'package:flutter_app/my_scaffold.dart';
import 'package:flutter_app/my_tab_bar.dart';
import 'package:flutter_app/my_theme.dart';
import 'package:flutter_app/my_transform.dart';
import 'package:flutter_app/return_back.dart';
import 'package:flutter_app/route/tip_route.dart';
import 'package:flutter_app/scroll/my_list_view.dart';
import 'package:flutter_app/scroll/my_list_view_builder.dart';
import 'package:flutter_app/scroll/my_list_view_separated.dart';
import 'package:flutter_app/scroll/my_single_child_scrollview.dart';
import 'package:flutter_app/statemanager/state_manager.dart';
import 'package:flutter_app/switch_checkbox.dart';

/*void main() => runApp(new MaterialApp(
      title: 'title',
      home: new MyScaffold(),
    ));*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("输入框"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return InputText();
                    }));
                  }),
              RaisedButton(
                  child: new Text("自动校验的输入框"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return InputTextValidate();
                    }));
                  }),
              RaisedButton(
                  child: new Text("路由界面"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (context) {
                      return new TipRoute();
                    }));
                  }),
              RaisedButton(
                  child: Text("状态管理"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return StateManager();
                    }));
                  }),
              RaisedButton(
                  child: Text("选择框"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SwitchCheckbox();
                    }));
                  }),
              RaisedButton(
                  child: Text("进度指示器"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyProgressIndicator();
                    }));
                  }),
              RaisedButton(
                  child: Text("装饰容器"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyDecoratedBox();
                    }));
                  }),
              RaisedButton(
                  child: Text("变换"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyTransform();
                    }));
                  }),
              RaisedButton(
                  child: Text("基础界面"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyScaffold();
                    }));
                  }),
              RaisedButton(
                child: Text("菜单栏"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyTabBar();
                  }));
                },
              ),
              RaisedButton(
                child: Text("SingleChildScrollView"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MySingleChildScrollView();
                  }));
                },
              ),
              RaisedButton(
                  child: Text("默认构造方式的ListView"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyListView();
                    }));
                  }),
              RaisedButton(
                  child: Text("ListView.Builder"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyListViewBuilder();
                    }));
                  }),
              RaisedButton(
                  child: Text("ListView.Separated"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyListViewSeparated();
                      }),
                    );
                  }),
              RaisedButton(
                child: Text("返回键"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ReturnBack();
                      },
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("主题切换"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyTheme();
                      },
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("异步更新UI"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AsyncRefreshUI();
                    }),
                  );
                },
              ),
              RaisedButton(
                child: Text("StreamBuilder异步更新UI"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AsyncStreamRefreshUI();
                    }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
