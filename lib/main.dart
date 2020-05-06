import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBallPage());

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask me anything"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: SafeArea(
          child: Container(
            child: Magic8ball(),
          ),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
    );
  }
}

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            magicAnswers();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ],
    );
  }

  magicAnswers() {
    print('got pressed');
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
