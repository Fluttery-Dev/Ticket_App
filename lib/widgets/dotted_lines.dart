import 'package:flutter/material.dart';

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
              height: 1,
              width: width,
              child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      },
    );
  }
}
