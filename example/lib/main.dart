import 'package:flutter/material.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';

void main() {
  runApp(const ToolkitExampleApp());
}

class ToolkitExampleApp extends StatelessWidget {
  const ToolkitExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Toolkit Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        extensions: const [
          ToolkitThemeExtension(
            cornerRadius: 16,
            defaultPadding: EdgeInsets.all(16),
          ),
        ],
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Toolkit')),
      body: Center(
        child: ToolkitCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Ready-to-use UI primitives'),
              const ToolkitGap(12),
              ToolkitButton(
                label: 'Press me',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
