import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Hiren",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _height = 50;

  double _width = 50;

  Color _color = Colors.red;
  Color _color2 = Colors.red;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color2,
      appBar: AppBar(
        title: Text(
          "Hiren",
          style: TextStyle(fontSize: 50),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
          duration: Duration(seconds: 1),
          height: _height,
          width: _width,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          setState(() {
            _height = random.nextInt(300).toDouble();
            _width = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            _color2 = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
