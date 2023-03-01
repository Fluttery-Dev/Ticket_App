import 'package:flutter/material.dart';
import '../util/app_styles.dart';
import '../util/app_layout.dart';
import 'package:gap/gap.dart';

class ColumnText extends StatelessWidget {
  const ColumnText(
      {super.key,
      required this.upperText,
      required this.lowerText,
      this.alignment = CrossAxisAlignment.start,
      this.isColored = true});
  final String upperText;
  final String lowerText;
  final bool isColored;
  final CrossAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          upperText,
          style: isColored
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          lowerText,
          style: isColored
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
