import 'package:flutter/widgets.dart';

class ToolkitGap extends StatelessWidget {
  const ToolkitGap(this.size, {super.key, this.axis = Axis.vertical});

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.vertical
        ? SizedBox(height: size)
        : SizedBox(width: size);
  }
}
