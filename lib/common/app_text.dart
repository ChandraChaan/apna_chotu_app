import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const CommonText(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLines,
    );
  }
}
