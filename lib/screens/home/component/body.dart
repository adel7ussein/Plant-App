import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/component/custom_button.dart';
import 'package:plant_app/screens/home/component/feature_plants.dart';
import 'package:plant_app/screens/home/component/header_with_searchbox.dart';
import 'package:plant_app/screens/home/component/recommended_listof_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total heigth and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          CustomButton(
            buttonName: 'Recomended',
            press: () {},
          ),
          const RecommendedListOfPlants(),
          CustomButton(buttonName: "Featured Plants", press: () {}),
          const FeaturePlants(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}



