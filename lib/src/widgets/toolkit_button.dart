import 'package:flutter/widgets.dart';

import '../theme/toolkit_theme_extension.dart';

class ToolkitButton extends StatelessWidget {
  const ToolkitButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.leading,
    this.isLoading = false,
    this.style = ToolkitThemeExtension.fallback,
  });

  final String label;
  final Widget? leading;
  final VoidCallback? onPressed;
  final bool isLoading;
  final ToolkitThemeExtension style;

  @override
  Widget build(BuildContext context) {
    final disabled = isLoading || onPressed == null;

    return GestureDetector(
      onTap: disabled ? null : onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: disabled
              ? const Color(0xFFBDBDBD)
              : style.backgroundColor,
          borderRadius: BorderRadius.circular(style.cornerRadius),
        ),
        child: Padding(
          padding: style.defaultPadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isLoading) ...[
                const SizedBox(
                  width: 12,
                  height: 12,
                  child: _Spinner(),
                ),
                const SizedBox(width: 8),
              ] else if (leading != null) ...[
                leading!,
                const SizedBox(width: 8),
              ],
              Text(label, style: TextStyle(color: style.foregroundColor)),
            ],
          ),
        ),
      ),
    );
  }
}

class _Spinner extends StatefulWidget {
  const _Spinner();

  @override
  State<_Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<_Spinner>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: const SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(color: Color(0xFFFFFFFF), width: 2),
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
