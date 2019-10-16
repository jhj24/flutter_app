import 'package:flutter/material.dart';
import 'package:flutter_app/animation/my_animation.dart';
import 'package:flutter_app/animation/my_animation_widget.dart';
import 'package:flutter_app/async_refresh_ui.dart';
import 'package:flutter_app/async_stream_refresh_ui.dart';
import 'package:flutter_app/dialog/my_alert_dialog.dart';
import 'package:flutter_app/gesture/drag.dart';
import 'package:flutter_app/gesture/my_gesture.dart';
import 'package:flutter_app/gesture/my_listener.dart';
import 'package:flutter_app/gesture/scale.dart';
import 'package:flutter_app/input/input_text.dart';
import 'package:flutter_app/input/input_text_validate.dart';
import 'package:flutter_app/my_decorated_box.dart';
import 'package:flutter_app/my_inherited_widget.dart';
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
      home: NewHome(),
    );
  }
}

class NewHome extends StatelessWidget {
  var _list = [
    Model(text: "输入框", widget: InputText()),
    Model(text: "自动校验的输入框", widget: InputTextValidate()),
    Model(text: "路由界面", widget: TipRoute()),
    Model(text: "状态管理", widget: StateManager()),
    Model(text: "选择框", widget: SwitchCheckbox()),
    Model(text: "进度指示器", widget: MyProgressIndicator()),
    Model(text: "装饰容器", widget: MyDecoratedBox()),
    Model(text: "变换", widget: MyTransform()),
    Model(text: "基础界面", widget: MyScaffold()),
    Model(text: "菜单栏", widget: MyTabBar()),
    Model(text: "SingleChildScrollView", widget: MySingleChildScrollView()),
    Model(text: "默认构造方式的ListView", widget: MyListView()),
    Model(text: "ListView.Builder", widget: MyListViewBuilder()),
    Model(text: "ListView.Separated", widget: MyListViewSeparated()),
    Model(text: "返回键", widget: ReturnBack()),
    Model(text: "主题切换", widget: MyTheme()),
    Model(text: "数据共享", widget: InheritedWidgetTest()),
    Model(text: "异步更新UI", widget: AsyncRefreshUI()),
    Model(text: "StreamBuilder异步更新UI", widget: AsyncStreamRefreshUI()),
    Model(text: "Dialog", widget: MyAlertDialog()),
    Model(text: "Listener", widget: MyListener()),
    Model(text: "Gesture", widget: MyGesture()),
    Model(text: "Drag", widget: Drag()),
    Model(text: "Scale", widget: Scale()),
    Model(text: "动画0", widget: MyAnimation()),
    Model(text: "动画1", widget: MyAnimationWidget())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: ListView.separated(
          itemBuilder: (context, position) {
            return ListTile(
              title: Text(_list[position].text),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return _list[position].widget;
                  }),
                );
              },
            );
          },
          separatorBuilder: (context, position) {
            return Divider();
          },
          itemCount: _list.length),
    );
  }
}

class Model {
  Model({this.text, this.widget});

  String text;
  Widget widget;
}
