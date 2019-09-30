import 'package:flutter/material.dart';

class AsyncRefreshUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AsyncRefreshUI();
  }
}

class _AsyncRefreshUI extends State<AsyncRefreshUI> {
  Future<String> _mockNetworkData() async {
    return Future.delayed(Duration(seconds: 3), () => "我是从互联网上获取的数据");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("异步更新UI"),
      ),
      body: Center(
        child: FutureBuilder(
          future: _mockNetworkData(),
          builder: (context, builder) {
            if (builder.connectionState == ConnectionState.done) {
              if (builder.hasError) {
                // 请求失败，显示错误
                return Text("Error: ${builder.error}");
              } else {
                // 请求成功，显示数据
                return Text("Contents: ${builder.data}");
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
