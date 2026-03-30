import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp( // Material is a theme for flutter OR "wrapper" for the whole app.
      home: Scaffold( // Scaffold is as a "blank page template." It provides a structure for common UI elements like app bars, drawers, and snack bars.
        body: GradientContainer(),
      ),
    ),
  );
}
