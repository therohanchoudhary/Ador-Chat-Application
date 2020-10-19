import 'package:flutter/material.dart';
class RoundedButtonWidget extends StatelessWidget {
  final String text;
  final onPressed;
  final double borderRadius;
  final Color backgroundColor;
  final Color borderColor;
  final double height;
  final TextStyle textStyle;

  RoundedButtonWidget({
    this.text,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.height,
    this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FlatButton(
        onPressed: () {},
        child: Container(
          height: height,
          width: double.infinity,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(color: borderColor),
            ),
            onPressed: onPressed,
            color: backgroundColor,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}