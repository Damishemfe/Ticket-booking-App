import 'package:booktickets/component/app_layout.dart';
import 'package:booktickets/component/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 300,
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Styles.primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/one.png"))),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sheraton Hotel", style: Styles.h1.copyWith(color: Styles.kakiColor),),
                Row(
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_location_filled, color: Colors.white, size: 18,),
                    const Gap(5),
                    Text("Abuja, Nigeria", style: Styles.h4.copyWith(color: Colors.white),),
                  ],
                ),
                const Gap(10),
                Text("NGN 100,000/night", style: Styles.h2.copyWith(color: Colors.white),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
