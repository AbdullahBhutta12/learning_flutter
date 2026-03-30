import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';


var startAlignment = Alignment.topLeft; // startAlignment is a variable that is of type Alignment.
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget { // GradientContainer is a widget that extends StatelessWidget.
  const GradientContainer({super.key}); // super.key is a key that is used to identify the widget in the widget tree.


  @override
  Widget build(context) {
    return Container( // Container is a widget used for styling that provides a basic layout structure for a Flutter application
      decoration: BoxDecoration( // allows you to paint the background.
        gradient: LinearGradient( // smooth transition between colors.
          colors: const [Colors.red, Colors.blue],
          begin: startAlignment,
          end: endAlignment,
          stops: [0.3, 0.7],
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
