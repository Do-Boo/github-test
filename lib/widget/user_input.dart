import 'package:flutter/material.dart';
import 'package:vscode_flutter/enum.dart';
import 'package:vscode_flutter/widget/user_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;

  const UserInput(
      {super.key,
      required this.isDone,
      required this.callback,
      this.userInput});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: InputCard(child: Image.asset(userInput!.path))),
          const Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map((type) => InputCard(
              child: Image.asset(type.path),
              callback: () => callback(type),
            ))
        .toList();
  }
}
