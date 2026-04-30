import 'package:flutter/widgets.dart';

import '../theme/toolkit_theme_extension.dart';

class ToolkitCard extends StatelessWidget {
  const ToolkitCard({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.border,
    this.onTap,
    this.style = ToolkitThemeExtension.fallback,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final BorderSide? border;
  final VoidCallback? onTap;
  final ToolkitThemeExtension style;

  @override
  Widget build(BuildContext context) {
    final card = DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? style.backgroundColor,
        borderRadius: BorderRadius.circular(style.cornerRadius),
        border: border == null ? null : Border.fromBorderSide(border!),
      ),
      child: Padding(
        padding: padding ?? style.defaultPadding,
        child: child,
      ),
    );

    if (onTap == null) {
      return card;
    }

    return GestureDetector(onTap: onTap, child: card);
  }
}
