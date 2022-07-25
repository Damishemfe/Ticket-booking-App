import 'package:booktickets/component/app_layout.dart';
import 'package:booktickets/component/app_styles.dart';
import 'package:booktickets/reusable_widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            /*
            this container is responsible for showing the blue part of
            the ticket
             */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "JOS",
                        style: Styles.h3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24.0,
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
                                    (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
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
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LAG",
                        style: Styles.h3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Plateau",
                          style: Styles.h4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "3H 30M",
                        style: Styles.h4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Lagos",
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
                  const SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
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
              decoration:  BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY", style: Styles.h3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                          const Gap(3),
                          Text("Date", style: Styles.h4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: Styles.h3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                          const Gap(3),
                          Text("Departure Time", style: Styles.h4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.h3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                          const Gap(3),
                          Text("Number", style: Styles.h4.copyWith(color: Colors.white),),
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
