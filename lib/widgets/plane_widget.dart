import 'package:flutter/material.dart';

import 'package:ticket_booking/widgets/dotted_lines.dart';
import '../util/app_layout.dart';

class PlaneWidget extends StatelessWidget {
  const PlaneWidget({super.key});

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
              border: Border.all(width: 2.5, color: Colors.white),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(24),
            width: constraint.maxWidth * 0.7,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const DottedLines(width: 3, space: 6),
                Transform.rotate(
                  angle: 1.5,
                  child: const Icon(
                    Icons.local_airport_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2.5, color: Colors.white),
            ),
          )
        ],
      );
    });
  }
}
