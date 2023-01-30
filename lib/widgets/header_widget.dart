import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;

  const HeaderWidget({Key? key, this.color, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }
}
