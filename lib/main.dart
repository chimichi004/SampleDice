import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
      ),
    );
  }
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: changeDice,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeDice,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
