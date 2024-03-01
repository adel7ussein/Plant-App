import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/component/custom_feature_plantcard.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomFeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          CustomFeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}
