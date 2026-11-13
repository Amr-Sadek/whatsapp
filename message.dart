// dart format off

import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/assignment_flutter 1/whatsapp/chat_screen.dart';

class Message extends StatelessWidget {

  String text;
  double topLeftRadius;
  double topRightRadius;
  int boxColor;
  Alignment alignment;
  double boxWidth;
  String? imagePath;

  Message({
    required this.text,
    this.topLeftRadius = 0,
    this.topRightRadius = 16,
    this.boxColor = 0xff168C4B,
    required this.alignment,
    required this.boxWidth,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(boxColor),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        width: boxWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
            if (imagePath != null) ...[
              SizedBox(height: 7),
              Image.asset(imagePath!, width: 237, height: 171),
            ],
          ],
        ),
      ),
    );
  }
}
// dart format off