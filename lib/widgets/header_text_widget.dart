import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final EdgeInsets? margin;
  final String? text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  const HeaderTextWidget(
      {super.key, this.margin, this.text, this.textAlign, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Center(
        child: Text('$text', textAlign: textAlign, style: textStyle),
      ),
    );
  }
}
