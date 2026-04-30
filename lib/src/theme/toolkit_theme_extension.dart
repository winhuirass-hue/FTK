import 'package:flutter/material.dart';

@immutable
class ToolkitThemeExtension extends ThemeExtension<ToolkitThemeExtension> {
  const ToolkitThemeExtension({
    required this.cornerRadius,
    required this.defaultPadding,
  });

  final double cornerRadius;
  final EdgeInsets defaultPadding;

  @override
  ToolkitThemeExtension copyWith({
    double? cornerRadius,
    EdgeInsets? defaultPadding,
  }) {
    return ToolkitThemeExtension(
      cornerRadius: cornerRadius ?? this.cornerRadius,
      defaultPadding: defaultPadding ?? this.defaultPadding,
    );
  }

  @override
  ToolkitThemeExtension lerp(
    covariant ThemeExtension<ToolkitThemeExtension>? other,
    double t,
  ) {
    if (other is! ToolkitThemeExtension) {
      return this;
    }

    return ToolkitThemeExtension(
      cornerRadius: lerpDouble(cornerRadius, other.cornerRadius, t) ?? cornerRadius,
      defaultPadding:
          EdgeInsets.lerp(defaultPadding, other.defaultPadding, t) ?? defaultPadding,
    );
  }

  static ToolkitThemeExtension fallback(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    return ToolkitThemeExtension(
      cornerRadius: 14,
      defaultPadding: EdgeInsets.all(isDark ? 14 : 16),
    );
  }
}
