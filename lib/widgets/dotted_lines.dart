import 'package:flutter/material.dart';
import '../util/app_layout.dart';

class DottedLines extends StatelessWidget {
  final double width;
  final double space;
  final Color color;
  final double height;
  const DottedLines(
      {super.key,
      required this.width,
      required this.space,
      this.height = 1,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
            (constraint.constrainWidth() / (width + space)).floor(),
            (index) => SizedBox(
              height: AppLayout.getHeight(height),
              width: AppLayout.getWidth(width),
              child: DecoratedBox(decoration: BoxDecoration(color: color)),
            ),
          ),
        );
      },
    );
  }
}
