import 'dart:core';

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  Sandbox({Key key}) : super(key: key);

  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double opacity = 1;
  double margin = 0;
  double width = 200;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(margin),
        width: width,
        color: color,
        duration: Duration(
          milliseconds: 900,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => setState(() => margin = 50),
              child: Text('Animate Margin'),
            ),
            RaisedButton(
              onPressed: () => setState(() => color = Colors.purple),
              child: Text('Animate Color'),
            ),
            RaisedButton(
              onPressed: () => setState(() => width = 400),
              child: Text('Animate Width'),
            ),
            RaisedButton(
              onPressed: () => setState(() => opacity = 0),
              child: Text('Animate Opacity'),
            ),
            AnimatedOpacity(
              opacity: opacity,
              child: Text(
                'Hide Me',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(
                seconds: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
