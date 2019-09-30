import 'package:flutter/material.dart';

class AsyncStreamRefreshUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AsyncStreamRefreshUI();
  }
}

class _AsyncStreamRefreshUI extends State<AsyncStreamRefreshUI> {
  Stream<int> _counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: _counter(),
            builder: (context, builder) {
              if (builder.hasError) return Text('Error: ${builder.error}');
              switch (builder.connectionState) {
                case ConnectionState.none:
                  return Text('没有Stream');
                case ConnectionState.waiting:
                  return Text('等待数据...');
                case ConnectionState.active:
                  return Text('active: ${builder.data}');
                case ConnectionState.done:
                  return Text('Stream已关闭');
              }
              return null; // unreachable
            }),
      ),
    );
  }
}
