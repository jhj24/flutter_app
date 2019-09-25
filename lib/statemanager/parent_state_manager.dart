import 'package:flutter/material.dart';

class ParentStateManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentStateManager();
  }
}

class _ParentStateManager extends State<ParentStateManager> {
  var _active = false;

  void _handleTapBoxChanged(bool value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBox(active: _active, onChanged: _handleTapBoxChanged),
    );
  }
}

class TapBox extends StatelessWidget {
  TapBox({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active" : "InActive",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
