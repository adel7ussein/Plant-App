import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CustomTitleWithUnderline extends StatelessWidget {
  const CustomTitleWithUnderline(
      {super.key, required this.text, required this.press});
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}