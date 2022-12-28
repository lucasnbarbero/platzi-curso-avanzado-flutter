import "package:flutter/material.dart";

class GradientBack extends StatelessWidget {
  String title;
  var height;

  GradientBack(this.title, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(0.2, 0.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp),
      ),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
