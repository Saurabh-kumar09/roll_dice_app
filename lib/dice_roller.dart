import 'package:flutter/material.dart';
import 'package:start_practice1/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 250,
        ),
        const SizedBox(height: 20),
        TextButton(onPressed: rollDice, child: const StyledText("Roll Dice"))
      ],
    );
  }
}
