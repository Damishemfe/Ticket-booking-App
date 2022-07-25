import 'package:booktickets/component/app_styles.dart';
import 'package:booktickets/screens/hotel_view.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          /*
          this section houses the top part of the home screen
           */
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.h3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.h1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFFf4f6fd)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFbfc205),
                      ),
                      Text(
                        "Search...",
                        style: Styles.h4.copyWith(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.h2,
                    ),
                    InkWell(
                      onTap: (){
                        //print("You clicked me");
                      },
                      child: Text(
                        "View all",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),

          /*
          this section holds ths scrollable card views
          upcoming flight section
           */
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
                TicketView()
              ],
            ),
          ),
          const Gap(15),

          /*
          this section holds the bottom part of the screen
          hotel section
           */
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.h2,
                ),
                InkWell(
                  onTap: (){
                    //print("You clicked me");
                  },
                  child: Text(
                    "View all",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row (
              children: [
                HotelView(),
                HotelView(),
                HotelView()
              ],
            )
            ),
        ],
      ),
    );
  }
}
