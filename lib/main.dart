import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text(
            'DICE',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                fontFamily: 'Source Sans 3'),
          )),
          backgroundColor: Colors.red,
        ),
        body: DiceMain(),
      ),
    ),
  );
}

class DiceMain extends StatefulWidget {
  const DiceMain({super.key});

  @override
  State<DiceMain> createState() => _DiceMainState();
}

class _DiceMainState extends State<DiceMain> {
  var diceNumber = 1;
  var starting = 'ROLL THE DICE!!';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        diceNumber = Random().nextInt(6) + 1;
                        starting = 'YOU GOT: $diceNumber';
                      },
                    );
                  },
                  child: Image.asset(
                    'images/dice$diceNumber.png',
                    width: 290,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  starting,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.5,
                      fontFamily: 'Source Sans 3'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
