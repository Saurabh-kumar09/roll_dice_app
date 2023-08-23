import 'package:flutter/material.dart';
import 'package:start_practice1/dice_roller.dart';

var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
