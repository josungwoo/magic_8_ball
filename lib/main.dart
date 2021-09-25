import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallChange(),
    ),
  );
}

class BallChange extends StatefulWidget {
  @override
  _BallChangeState createState() => _BallChangeState();
}

class _BallChangeState extends State<BallChange> {
  int ballnumber = 1;
  MakeRandom() {
    setState(() {
      ballnumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            MakeRandom();
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}
