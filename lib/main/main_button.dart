import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Function() onPressed;

  const MainButton({
    super.key, 
    required this.text,
    this.buttonColor = Colors.purple /** Default buttonColor */,
    required this.onPressed,
    this.textColor = Colors.white /** Default textColor */,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: onPressed,
      minWidth: 300,
      child: Text(text,
          style: TextStyle(
            color: textColor,
            fontSize: 20.0,
          )),
    );
  }
}