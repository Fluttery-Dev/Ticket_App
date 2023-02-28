import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/widgets/tab_button.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(AppLayout.getHeight(15)),
      children: [
        Gap(
          AppLayout.getHeight(40),
        ),
        Text(
          'Tickets',
          style: Styles.headLineStyle1,
        ),
        Gap(
          AppLayout.getHeight(20),
        ),
        const TabButton(text1: 'Upcoming', text2: 'Previous'),
      ],
    );
  }
}
