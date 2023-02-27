import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/widgets/plane_widget.dart';
import './dotted_lines.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: const BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['code'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const PlaneWidget(),
                    Text(
                      ticket['to']['code'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['name'],
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      ticket['flying_time'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Text(
                      ticket['to']['name'],
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            color: const Color(0xFFF37B67),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: DottedLines(
                      width: 5,
                      space: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['date'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Date",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['departure_time'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Departure Time",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['number'].toString(),
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      "Number",
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
