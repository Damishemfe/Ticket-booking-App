import 'package:booktickets/component/app_layout.dart';
import 'package:booktickets/component/app_styles.dart';
import 'package:booktickets/reusable_widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  Map<String, dynamic> ticketDetails;

  TicketView({Key? key, required this.ticketDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16.0)),
        child: Column(
          children: [
            /*
            this container is responsible for showing the blue part of
            the ticket
             */
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketDetails['from']['code'],
                        style: Styles.h3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        const Center(
                            child: Icon(
                          FluentSystemIcons.ic_fluent_airplane_filled,
                          color: Colors.white,
                        ))
                      ])),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        ticketDetails['to']['code'],
                        style: Styles.h3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketDetails['from']['name'],
                          style: Styles.h4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticketDetails['flying_time'],
                        style: Styles.h4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketDetails['to']['name'],
                          style: Styles.h4.copyWith(color: Colors.white),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            /*
            this container is responsible for the dotted-design part of
            the ticket
             */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getHeight(10)),
                              bottomRight: Radius.circular(AppLayout.getHeight(10)))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: const DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )
                ],
              ),
            ),

            /*
            this container is responsible for the orange part of
            the ticket
             */
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticketDetails['date'],
                            style: Styles.h3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Gap(3),
                          Text(
                            "Date",
                            style: Styles.h4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticketDetails['departure_time'],
                            style: Styles.h3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Gap(3),
                          Text(
                            "Departure Time",
                            style: Styles.h4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticketDetails['number'].toString(),
                            style: Styles.h3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Gap(3),
                          Text(
                            "Number",
                            style: Styles.h4.copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
