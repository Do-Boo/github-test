import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget을 상하좌우로 배치하기"),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }
}
