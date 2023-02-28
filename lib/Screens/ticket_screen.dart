import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/util/app_util.dart';
import 'package:ticket_booking/widgets/tab_button.dart';
import 'package:ticket_booking/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
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
        Gap(AppLayout.getHeight(20)),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          width: AppLayout.getScreenWidth() * 0.85,
          child: Column(
            children: [
              TicketView(
                ticket: ticketList[0],
                isColored: false,
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter DB",
                        style: Styles.headLineStyle2,
                      ),
                      Text(
                        "Passenger",
                        style: Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Flutter DB",
                        style: Styles.headLineStyle2,
                      ),
                      Text(
                        "Passenger",
                        style: Styles.headLineStyle3,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
