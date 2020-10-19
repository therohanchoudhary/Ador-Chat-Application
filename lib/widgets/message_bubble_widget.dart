import 'package:flutter/material.dart';

class MessageBubbleWidget extends StatelessWidget {
  final alignmentContainer;
  final Color colorContainer;
  final Color textColor;
  final String message;

  MessageBubbleWidget({
    this.alignmentContainer,
    this.colorContainer,
    this.textColor,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: alignmentContainer,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: TextStyle(color: textColor),
                maxLines: null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
