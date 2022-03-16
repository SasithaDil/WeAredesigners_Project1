import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final double size;
  final Color colour;
  final FontWeight weight;
  const ReusableText(
      {Key? key,
      required this.text,
      required this.size,
      required this.colour,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //The text that created for simplify the code and use anywere
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: colour,
        fontWeight: weight,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
