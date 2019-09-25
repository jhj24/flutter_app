import 'package:flutter/material.dart';

class MixStateManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MixStateManager();
  }
}

class _MixStateManager extends State<MixStateManager> {
  bool _active = false;

  void _handleTapBoxChanged(bool value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: TapBox(active: _active, onChanged: _handleTapBoxChanged),
    );
  }
}

class TapBox extends StatefulWidget {
  TapBox({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    return _TapBox();
  }
}

class _TapBox extends State<TapBox> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTap: _handleTap,
        onTapCancel: _handleTapCancel,
        child: Container(
          child: Center(
            child: Text(
              widget.active ? "Active" : "Inactive",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
              border: _highlight
                  ? Border.all(
                      color: Colors.teal[700],
                      width: 10,
                    )
                  : null),
        ));
  }
}
