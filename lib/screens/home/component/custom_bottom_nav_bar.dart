import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          right: kDefaultPadding * 2,
          left: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              iconSize: 80,
              icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(
              onPressed: () {},
              iconSize: 80,
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {},
              iconSize: 80,
              icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}