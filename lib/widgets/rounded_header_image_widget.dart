import 'package:flutter/material.dart';

class RoundedHeaderWidget extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final Image? image;

  const RoundedHeaderWidget(
      {Key? key, this.color, this.width, this.height, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image!.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
