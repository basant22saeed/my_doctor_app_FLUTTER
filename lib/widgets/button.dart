import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      this.textColor,
      this.buttonWidth,
      this.fontSize});

  String buttonText;
  Color buttonColor;
  Color? textColor;
  double? buttonWidth;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        minWidth: buttonWidth,
        color: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
