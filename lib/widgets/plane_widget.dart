import 'package:flutter/material.dart';
import 'package:ticket_booking/util/app_layout.dart';

class PlaneWidget extends StatelessWidget {
  const PlaneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = AppLayout.getSize(context).width - 50;
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
              SizedBox(
                height: 24,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    15,
                    (index) => const SizedBox(
                      height: 1,
                      width: 3,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  ),
                ),
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
