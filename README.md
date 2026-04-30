# Flutter Toolkit (FTK)

A lightweight starter toolkit for Flutter with reusable UI primitives.

## Included

- `ToolkitButton`: filled button with loading state support.
- `ToolkitCard`: themed card wrapper with optional tap handling.
- `ToolkitGap`: simple spacing widget.
- `ToolkitThemeExtension`: app-level theme tokens for radius and padding.

## Usage

```dart
+import 'package:flutter_toolkit/flutter_toolkit.dart';
```

Add the theme extension:

```dart
ThemeData(
  extensions: const [
    ToolkitThemeExtension(
      cornerRadius: 16,
      defaultPadding: EdgeInsets.all(16),
    ),
  ],
)
```

See `example/lib/main.dart` for a full usage example.
