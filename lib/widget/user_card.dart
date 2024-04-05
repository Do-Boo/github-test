import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;

  const InputCard({super.key, required this.child, this.callback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => callback?.call(),
        child: InputContents(child: child),
      ),
    );
  }
}

class InputContents extends StatelessWidget {
  const InputContents({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 4),
      ),
      child: child,
    );
  }
}
