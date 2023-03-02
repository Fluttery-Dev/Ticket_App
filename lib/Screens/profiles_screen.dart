import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import 'package:ticket_booking/widgets/spaced_column_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: AppLayout.getWidth(90),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"),
                        fit: BoxFit.cover)),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFEF4F3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text(
                          "Premium Status",
                          style: Styles.headLineStyle4
                              .copyWith(color: const Color(0xFF526799)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "Edit",
                style: Styles.textStyle.copyWith(color: Styles.primaryColor),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Positioned(
                right: -45,
                top: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 20,
                      color: const Color(0xFF264CD2),
                    ),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've Got a new Reward",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 150 Flights this year",
                          style: Styles.headLineStyle3.copyWith(
                              color: const Color(0xFFD6E5FD), fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "Accumulated Miles",
            style: Styles.headLineStyle2,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFFFFFEFE),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: Styles.headLineStyle1.copyWith(fontSize: 40),
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Aquired",
                      style: Styles.headLineStyle3,
                    ),
                    Text(
                      "23 May 2021",
                      style: Styles.headLineStyle3,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const SpacedColumnText(
                  u1: '23 042',
                  l1: 'Miles',
                  u2: 'Airline CO',
                  l2: 'Recieved From',
                ),
                Gap(AppLayout.getHeight(20)),
                const SpacedColumnText(
                  u1: '24',
                  l1: 'Miles',
                  u2: 'Mc Donal\'s',
                  l2: 'Recieved From',
                ),
                Gap(AppLayout.getHeight(20)),
                const SpacedColumnText(
                  u1: '53 340',
                  l1: 'Miles',
                  u2: 'Exuma',
                  l2: 'Recieved From',
                ),
                Gap(AppLayout.getHeight(20)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "How to get More Miles",
                    style: Styles.headLineStyle3
                        .copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
