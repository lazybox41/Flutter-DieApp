import 'package:flutter/material.dart';
import 'styled_text.dart';
import 'dart:math';

class DieRoller extends StatefulWidget {
  const DieRoller({super.key});
  @override
  State<DieRoller> createState() {
    return _DieRollerState();
  }
}

//Class starting with an Underscore is a private class
class _DieRollerState extends State<DieRoller> {
  var activeDieImage = 'assets/images/dice-1.png';
  final randomizer = Random();
  void rollDice() {
    setState(() {
      var activeDieNum = randomizer.nextInt(6) + 1;

      activeDieImage = 'assets/images/dice-$activeDieNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDieImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const StyledText('Roll the Die'),
        ),
      ],
    );
  }
}
