import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String strText;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const ReusableText(
      {super.key,
      required this.strText,
      required this.fontSize,
      required this.color,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        strText,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
