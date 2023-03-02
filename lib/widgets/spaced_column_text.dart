import 'package:flutter/material.dart';
import 'column_text.dart';

class SpacedColumnText extends StatelessWidget {
  final String u1, l1, u2, l2;
  final bool isColored;
  const SpacedColumnText({
    super.key,
    required this.u1,
    required this.l1,
    required this.u2,
    required this.l2,
    this.isColored = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColumnText(
          upperText: u1,
          lowerText: l1,
          alignment: CrossAxisAlignment.start,
          isColored: isColored,
        ),
        ColumnText(
          upperText: u2,
          lowerText: l2,
          alignment: CrossAxisAlignment.end,
          isColored: isColored,
        ),
      ],
    );
  }
}
