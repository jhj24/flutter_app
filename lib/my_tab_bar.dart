import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTabBar();
  }
}

class _MyTabBar extends State<MyTabBar> with SingleTickerProviderStateMixin {
  //TabBar和TabBarView的controller是同一个,实现菜单切换和滑动状态同步的
  TabController _tabController;
  var _tabs = ["标题1", "标题2", "标题3"];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("菜单栏"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          bottom: TabBar(
              controller: _tabController,
              tabs: _tabs
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList()),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e),
            );
          }).toList(),
        ),
      ),
    );
  }
}
