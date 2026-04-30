import 'package:flutter/painting.dart';

class ToolkitThemeExtension {
  const ToolkitThemeExtension({
    required this.cornerRadius,
    required this.defaultPadding,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final double cornerRadius;
  final EdgeInsets defaultPadding;
  final Color backgroundColor;
  final Color foregroundColor;

  ToolkitThemeExtension copyWith({
    double? cornerRadius,
    EdgeInsets? defaultPadding,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return ToolkitThemeExtension(
      cornerRadius: cornerRadius ?? this.cornerRadius,
      defaultPadding: defaultPadding ?? this.defaultPadding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
    );
  }

  ToolkitThemeExtension lerp(ToolkitThemeExtension? other, double t) {
    if (other == null) {
      return this;
    }

    return ToolkitThemeExtension(
      cornerRadius: lerpDouble(cornerRadius, other.cornerRadius, t) ?? cornerRadius,
      defaultPadding:
          EdgeInsets.lerp(defaultPadding, other.defaultPadding, t) ?? defaultPadding,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t) ?? backgroundColor,
      foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t) ?? foregroundColor,
    );
  }

  static const ToolkitThemeExtension fallback = ToolkitThemeExtension(
    cornerRadius: 14,
    defaultPadding: EdgeInsets.all(14),
    backgroundColor: Color(0xFFF2F2F2),
    foregroundColor: Color(0xFF1A1A1A),
  );
}
