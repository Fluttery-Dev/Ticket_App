import 'package:flutter/material.dart';

import 'package:ticket_booking/widgets/ticket_view.dart';

class PlaneWidget extends StatelessWidget {
  const PlaneWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          width: 100, //TODO Have to make this Dynamic
          child: Stack(
            children: [
              const SizedBox(
                height: 24,
                child: DottedLines(width: 3, space: 6),
              ),
              Center(
                child: Transform.rotate(
                  angle: 1.5,
                  child: const Icon(
                    Icons.local_airport_rounded,
                    color: Colors.white,
                  ),
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
  }
}
