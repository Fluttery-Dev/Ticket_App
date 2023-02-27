import 'package:flutter/material.dart';
import '../util/app_layout.dart';

class DottedLines extends StatelessWidget {
  final double width;
  final double space;
  const DottedLines({super.key, required this.width, required this.space});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
            (constraint.constrainWidth() / space).floor(),
            (index) => SizedBox(
              height: AppLayout.getHeight(1),
              width: AppLayout.getWidth(width),
              child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      },
    );
  }
}
