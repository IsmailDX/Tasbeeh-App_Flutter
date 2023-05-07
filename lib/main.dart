import 'package:flutter/material.dart';
import 'package:tasbeeh_fun/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientContainer(
              Color.fromARGB(255, 0, 17, 255), Color.fromARGB(255, 29, 175, 0)),
        ),
      ),
    ),
  );
}
