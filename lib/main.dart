import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numberLeft = 1;
  int numberRight = 1;
  void randomNumber() {
    numberLeft = Random().nextInt(5) + 1;

    numberRight = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset('images/dice$numberLeft.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset('images/dice$numberRight.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
