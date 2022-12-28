import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  var color;
  var icon;
  double iconSize;
  bool mini;

  CircleButton(this.color, this.icon, this.iconSize, this.mini);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.mini,
        onPressed: onPressedButton,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: const Color(0xFF4268D3),
        ),
      ),
    );
  }
}
