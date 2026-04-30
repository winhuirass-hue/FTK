import 'package:flutter/widgets.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';

void main() {
  runApp(const ToolkitExampleApp());
}

class ToolkitExampleApp extends StatelessWidget {
  const ToolkitExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: ToolkitCard(
          style: const ToolkitStyle(
            cornerRadius: 16,
            padding: EdgeInsets.all(16),
            backgroundColor: Color(0xFFEFEFEF),
            borderColor: Color(0xFFCCCCCC),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Ready‑to‑use UI primitives',
                style: TextStyle(fontSize: 16),
              ),
              const ToolkitGap(12),
              ToolkitButton(
                label: 'Press me',
                onPressed: () {
                  // example action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
