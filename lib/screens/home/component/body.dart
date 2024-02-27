import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total heigth and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          // It will cover 20% of our total height
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Positioned(child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: const BoxDecoration(
                color: Colors.white
              ),
            ))
          ]),
        )
      ],
    );
  }
}
