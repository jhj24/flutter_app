import 'package:flutter/material.dart';

class MyProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyProgressIndicator();
  }
}

class _MyProgressIndicator extends State<MyProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Text(
              "进度为null",
              style: TextStyle(height: 3.0),
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Colors.grey[200],
            ),
            Text(
              "进度为50%",
              style: TextStyle(height: 3.0),
            ),
            LinearProgressIndicator(
              value: 0.5,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Colors.grey[200],
            ),
            Text(
              "环形进度",
              style: TextStyle(
                height: 3,
              ),
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Colors.grey[200],
            ),
            Text(
              "环形进度50%",
              style: TextStyle(height: 3),
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              backgroundColor: Colors.grey[200],
              value: 0.5,
            ),
            Text(
              "控制大小",
              style: TextStyle(height: 3),
            ),
            SizedBox(
              height: 3,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
