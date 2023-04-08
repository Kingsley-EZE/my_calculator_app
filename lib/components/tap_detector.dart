import 'package:flutter/material.dart';


class ButtonTapDetector extends StatelessWidget {

  final Function onPress;
  final String text;
  final TextStyle mStyle;

  const ButtonTapDetector({required this.text, required this.onPress, required this.mStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Text(
        text,
        style: mStyle,
      ),
    );
  }
}