import 'package:flutter/material.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/widgets/column_text.dart';
import 'package:ticket_booking/widgets/plane_widget.dart';
import './dotted_lines.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColored;
  const TicketView({super.key, required this.ticket, this.isColored = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.getScreenWidth() * 0.85,
      // height: AppLayout.getHeight(200),
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(left: AppLayout.getWidth(20)),
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: isColored ? const Color(0xFF526799) : Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ColumnText(
                    upperText: ticket['from']['code'],
                    lowerText: ticket['from']['name'],
                    alignment: CrossAxisAlignment.start,
                    isColored: isColored,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PlaneWidget(
                        color: isColored ? Colors.white : Color(0xFF8ACCF7),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColored
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ColumnText(
                    upperText: ticket['to']['code'],
                    lowerText: ticket['to']['name'],
                    alignment: CrossAxisAlignment.end,
                    isColored: isColored,
                  ),
                ),
              ],
            ),
          ),
          Container(
            //   margin: EdgeInsets.only(left: AppLayout.getWidth(20)),
            color: isColored ? const Color(0xFFF37B67) : Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: const DecoratedBox(
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
                    padding: const EdgeInsets.all(12),
                    child: DottedLines(
                      width: 7,
                      space: 10,
                      height: 2,
                      color: isColored ? Colors.white : Colors.grey.shade200,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: const DecoratedBox(
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
            //  margin: EdgeInsets.only(left: AppLayout.getWidth(20)),
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: isColored ? Styles.orangeColor : Colors.white,
              borderRadius: isColored
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColumnText(
                  upperText: ticket['date'],
                  lowerText: "Date",
                  isColored: isColored,
                  alignment: CrossAxisAlignment.start,
                ),
                ColumnText(
                    upperText: ticket['departure_time'],
                    lowerText: "Departure Time",
                    isColored: isColored,
                    alignment: CrossAxisAlignment.center),
                ColumnText(
                  upperText: ticket['number'].toString(),
                  lowerText: "Number",
                  alignment: CrossAxisAlignment.end,
                  isColored: isColored,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
