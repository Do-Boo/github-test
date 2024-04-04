import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: CustomTheme,
    ),
  );
}

final CustomTheme = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
);

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = CustomTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter theme"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Press Count", style: textTheme.bodyLarge),
            Text("$count", style: textTheme.displayLarge),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => setState(() => count++)),
    );
  }
}
