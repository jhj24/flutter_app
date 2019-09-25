import 'package:flutter/material.dart';

class SwitchCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchCheckbox();
  }
}

class _SwitchCheckbox extends State<SwitchCheckbox> {
  var _isSwitchState = true;
  var _isCheckboxState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择框"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "单选框",
                style: TextStyle(color: Colors.red[500], fontSize: 16),
              ),
              Switch(
                  value: _isSwitchState,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchState = value;
                    });
                  }),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "多选框",
                style: TextStyle(color: Colors.red[500], fontSize: 16),
              ),
              Checkbox(
                  value: _isCheckboxState,
                  onChanged: (value) {
                    setState(() {
                      _isCheckboxState = value;
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}
