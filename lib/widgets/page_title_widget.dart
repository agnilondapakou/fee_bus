import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  final EdgeInsets? margin;
  final String? text;
  final TextStyle? textStyle;

  const PageTitleWidget({super.key, this.margin, this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Center(
        child: Text(
          '$text',
          style: textStyle,
        ),
      ),
    );
  }
}
