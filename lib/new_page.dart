import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome new Page"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => context.pushNamed("new1"),
          child: const Text("Go to New Page2"),
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome New Page2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.pop(context),
              child: const Text("Go to New Page"),
            ),
            TextButton(
              onPressed: () => context.goNamed("home"),
              child: const Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
