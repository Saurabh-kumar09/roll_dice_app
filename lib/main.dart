import 'package:flutter/material.dart';
import 'package:start_practice1/gradient_contaainer.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 229, 135, 67),
          Color.fromARGB(255, 41, 180, 127)
        ]),
      ),
    ),
  );
}
