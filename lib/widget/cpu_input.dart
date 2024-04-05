import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vscode_flutter/enum.dart';
import 'package:vscode_flutter/widget/user_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({super.key, required this.isDone, required this.cpuInput});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const SizedBox.shrink()),
        Expanded(child: InputCard(child: getCpuInput())),
        Expanded(child: const SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
      height: 90,
      child: Center(
        child: Text("?",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
