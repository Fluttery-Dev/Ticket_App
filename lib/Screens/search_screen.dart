import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/util/app_layout.dart';
import 'package:ticket_booking/util/app_styles.dart';
import '../widgets/tab_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
        scrollDirection: Axis.vertical,
        children: [
          Gap(AppLayout.getHeight(20)),
          Text(
            "What Are\nYou Looking For",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          const TabButton(text1: 'Airline Tickets', text2: 'Hotels'),
          /*
          Departure and Arrival button
          */
          Gap(AppLayout.getHeight(20)),
          const ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.flight_takeoff_rounded),
            title: Text("Departure"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.flight_land_rounded),
            title: Text("Arrival"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          /*
          Find Tickets Button
          */
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xD91130CE),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Find Tickets",
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Offers",
                style: Styles.headLineStyle2,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "View All",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
          Gap(
            AppLayout.getHeight(10),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: AppLayout.getHeight(400),
            child: Row(
              children: [
                Container(
                  //height: AppLayout.getHeight(380),
                  width: AppLayout.getScreenWidth() * 0.45,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/sit.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Text(
                        "20% Discount on Business lass Tickets from Airline Don't Miss",
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(15)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: AppLayout.getScreenWidth() * 0.4,
                          // height: AppLayout.getHeight(180),
                          padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(20),
                            horizontal: AppLayout.getHeight(15),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(18),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nFor Survey",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(
                                AppLayout.getHeight(5),
                              ),
                              Text(
                                "Take the survey about our services and Products.",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
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
                                color: const Color(0xFF189999),
                              ),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Gap(AppLayout.getHeight(15)),
                    Container(
                      width: AppLayout.getScreenWidth() * 0.4,
                      height: AppLayout.getHeight(180),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(20),
                        horizontal: AppLayout.getHeight(15),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Take Love",
                            style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(
                            AppLayout.getHeight(10),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '????',
                                  style: TextStyle(fontSize: 28),
                                ),
                                TextSpan(
                                  text: '????',
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: '????',
                                  style: TextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
