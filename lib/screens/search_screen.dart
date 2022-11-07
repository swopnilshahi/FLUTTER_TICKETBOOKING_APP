import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/widgets/app_double_text_widget.dart';
import 'package:ticket_booking/widgets/app_icon_text.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'Where are \n You Looking For',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(36)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  /**ariline ticket */
                  Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text("Airline Tickets"),
                      )),
                  /**hotel */
                  Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent,
                      ),
                      child: const Center(
                        child: Text("Hotel"),
                      )),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(15)),
          Gap(AppLayout.getHeight(15)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  color: Colors.blue),
              child: Center(
                child: Text(
                  "Find Ticket",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(AppLayout.getHeight(25)),

          /**upcoming flight */

          const AppDoubleText(
              bigText: 'Upcoming Flight', smallText: 'View all'),
          Gap(AppLayout.getHeight(25)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 2,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/room1.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "30% discount on early booking on Winter.Hurry Up!",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(12)),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount ! \n For Survey",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take a survey of our services to get discount",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Colors.green.shade900),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(children: [
                      Text('Suprise !',
                          style: Styles.headLineStyle1.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center),
                      Gap(AppLayout.getHeight(20)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '🎁', style: TextStyle(fontSize: 30)),
                        TextSpan(text: '🎁', style: TextStyle(fontSize: 60)),
                        TextSpan(text: '🎁', style: TextStyle(fontSize: 30)),
                      ]))
                    ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
