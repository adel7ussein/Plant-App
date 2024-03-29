import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CustomFeaturePlantCard extends StatelessWidget {
  const CustomFeaturePlantCard({
    super.key,
    required this.image,
    required this.press,
  });
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)),
      ),
    );
  }
}