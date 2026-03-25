import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp( // Material is a theme for flutter OR "wrapper" for the whole app.
      home: Scaffold( // Scaffold is as a "blank page template." It provides a structure for common UI elements like app bars, drawers, and snack bars.
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget { // GradientContainer is a widget that extends StatelessWidget.
  const GradientContainer({super.key}); // super.key is a key that is used to identify the widget in the widget tree.


  @override
  Widget build(context) {
    return Container( // Container is a widget used for styling that provides a basic layout structure for a Flutter application
      decoration: const BoxDecoration( // allows you to paint the background.
        gradient: LinearGradient( // smooth transition between colors.
          colors: [Colors.red, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.7],
        ),
      ),
      child: const Center(child: Text('Hello Everyone!', style: TextStyle(color: Colors.white, fontSize: 30))),
    );
  }
}