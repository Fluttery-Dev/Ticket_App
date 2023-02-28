import 'package:flutter/material.dart';

import 'package:ticket_booking/widgets/dotted_lines.dart';
import '../util/app_layout.dart';

class PlaneWidget extends StatelessWidget {
  const PlaneWidget({super.key, Color color = Colors.white}) : _color = color;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: _color),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(24),
            width: constraint.maxWidth * 0.7,
            child: Stack(
              alignment: Alignment.center,
              children: [
                DottedLines(
                  width: 3,
                  space: 6,
                  color: _color,
                ),
                Transform.rotate(
                  angle: 1.5,
                  child: Icon(
                    Icons.local_airport_rounded,
                    color: _color,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: _color),
            ),
          )
        ],
      );
    });
  }
}
