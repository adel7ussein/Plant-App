import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/component/custom_recommend_plantcard.dart';

class RecommendedListOfPlants extends StatelessWidget {
  const RecommendedListOfPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomRecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "America",
            price: 440,
            press: () {},
          ),
          CustomRecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          CustomRecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "China",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}