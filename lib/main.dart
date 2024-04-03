import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ContraintsWidget(),
      ),
    );
  }
}

class ContraintsWidget extends StatelessWidget {
  const ContraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.blue,
            child: Text(
              "Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! ",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text(
              "Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! ",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
