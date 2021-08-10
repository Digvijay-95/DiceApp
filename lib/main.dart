import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.blue,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightnumber = 6;
  int leftnumber = 6;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ], //children
      ),
      SizedBox(
        height: 250.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              print("Pressed!");
              setState(() {
                rightnumber = Random().nextInt(6) + 1;
                leftnumber = Random().nextInt(6) + 1;
              });
            },
            icon: Icon(Icons.autorenew),
            label: const Text('SHUFFLE'),
          )
        ],
      )
    ]);
  }
}
