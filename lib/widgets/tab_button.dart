import 'package:flutter/material.dart';
import '../util/app_layout.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(20),
          ),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          /*
          container for airline tickets
          */
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(
                  AppLayout.getWidth(50),
                ),
              ),
            ),
            child: const Center(child: Text("Airline Tickets")),
          ),

          /*
          container for HOTEL tickets
          */
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(
                  AppLayout.getWidth(50),
                ),
              ),
            ),
            child: const Center(child: Text("Hotels")),
          ),
        ],
      ),
    );
  }
}
