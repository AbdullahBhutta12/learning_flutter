import 'package:first_app/dice_roller.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

Alignment? startAlignment; // ? means that startAlignment can be null or of type Alignment.
var endAlignment = Alignment.bottomRight; // endAlignment is a variable that is of type Alignment.

class GradientContainer extends StatelessWidget { // GradientContainer is a widget that extends StatelessWidget.
  const GradientContainer(this.color1, this.color2, {super.key}); // super.key is a key that is used to identify the widget in the widget tree.

  const GradientContainer.purple({super.key}) // This is a named constructor than can be used instead of GradientContainer constructor.
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    var startAlignment = Alignment.topLeft; // known as variable initialization.
    return Container( // Container is a widget used for styling that provides a basic layout structure for a Flutter application
      decoration: BoxDecoration( // allows you to paint the background.
        gradient: LinearGradient( // smooth transition between colors.
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
          stops: [0.3, 0.7],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
      // child: const Center(child: StyledText('Hello Flutter')), //StyledText is a widget that extends StatelessWidget.
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});
//   final List<Color> colors;
//
//   @override
//   Widget build(context) {
//     var startAlignment = Alignment.topLeft;
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//           stops: [0.3, 0.7],
//         ),
//       ),
//       child: const Center(child: StyledText('Hello Flutter')),
//     );
//   }
// }
