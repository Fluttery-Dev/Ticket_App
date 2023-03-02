import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/util/app_util.dart';
import 'package:ticket_booking/widgets/column_text.dart';
import 'package:ticket_booking/widgets/dotted_lines.dart';
import 'package:ticket_booking/widgets/spaced_column_text.dart';
import 'package:ticket_booking/widgets/tab_button.dart';
import 'package:ticket_booking/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(AppLayout.getHeight(20)),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TicketView(
              ticket: ticketList[0],
              isColored: false,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(20)),
            //margin: const EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SpacedColumnText(
                  u1: 'FlutterDB',
                  l1: 'Passenger',
                  u2: '5221478566',
                  l2: 'passport',
                ),
                Gap(AppLayout.getWidth(20)),
                DottedLines(
                  width: 5,
                  space: 7,
                  height: 2,
                  color: Colors.grey.shade200,
                ),
                Gap(AppLayout.getWidth(20)),
                const SpacedColumnText(
                  u1: '0055 444 77147',
                  l1: 'Number of E-ticket',
                  u2: 'B2SG28',
                  l2: 'Booking code',
                ),
                Gap(AppLayout.getWidth(20)),
                DottedLines(
                  width: 5,
                  space: 7,
                  height: 2,
                  color: Colors.grey.shade200,
                ),
                Gap(AppLayout.getWidth(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/visa.png",
                              semanticLabel: 'Visa Image',
                              scale: 10,
                            ),
                            Text(
                              ' *** 2462',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          'Payment Method',
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),
                    const ColumnText(
                      upperText: '\$249.99',
                      lowerText: 'Price',
                      alignment: CrossAxisAlignment.end,
                      isColored: false,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          /*
          for barcode
          */
          Container(
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BarcodeWidget(
                data: "Hello World",
                barcode: Barcode.code128(),
                drawText: false,
                color: Styles.textColor,
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TicketView(
              ticket: ticketList[0],
            ),
          ),
        ],
      ),
    );
  }
}
