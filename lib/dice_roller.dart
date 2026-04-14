import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() { // rollDice is a method that is called when the button is pressed.
    setState(() { // setState is a method that is used to update the state of the widget. Means update UI again where this function is called.
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // currentDiceRoll = Random().nextInt(6) + 1; // Random().nextInt(6) + 1 is a method that is used to generate a random number between 1 and 6.

    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom( // styleFrom is a method that is used to set the style of the button.
              // padding: const EdgeInsets.only(top: 20),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            child: Text('Roll Dice'))
      ],
    );
  }
}
