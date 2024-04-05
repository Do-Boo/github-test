import 'package:flutter/material.dart';
import 'package:vscode_flutter/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({super.key, required this.isDone, this.result, required this.callback});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => callback.call(),
            child: Text("Play again"),
          ),
        ],
      );
    }

    return const Center(
      child: Text("가위, 바위, 보 중 하나를 선택해주세요",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
