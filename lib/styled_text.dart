import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // super.key is a key that is used to identify the widget in the widget tree. In this.text, this is a parameter that is passed to the constructor and assigned to the text variable and text is a final variable of class StyledText.


  final String text;


  @override
  Widget build(context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 30));
  }
}