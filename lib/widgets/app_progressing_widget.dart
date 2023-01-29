import 'package:flutter/material.dart';

class AppProgressingWidget extends StatelessWidget {
  const AppProgressingWidget({super.key, this.text = ""});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width / 4,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const LinearProgressIndicator(
                  color: Color(0xFF175F30),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          )),
    );
  }
}
