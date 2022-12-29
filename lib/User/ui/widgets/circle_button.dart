import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  var color;
  var icon;
  double iconSize;
  bool mini;
  final VoidCallback onPressed;

  CircleButton(this.color, this.icon, this.iconSize, this.mini,
      {super.key, required this.onPressed});

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
        onPressed: widget.onPressed,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: const Color(0xFF4268D3),
        ),
      ),
    );
  }
}
