import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1Num=1;
  int dice2Num= 6;
  void changeTheface(){setState(() {
    dice1Num= Random().nextInt(6) + 1;
    dice2Num= Random().nextInt(6) + 1;
  });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeTheface();
              },
              child: Image.asset(
                'images/dice$dice1Num.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeTheface();
                },
                child: Image.asset('images/dice$dice2Num.png')),
          ),
        ],
      ),
    );
  }
}
