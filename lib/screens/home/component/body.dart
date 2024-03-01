import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/component/custom_button.dart';
import 'package:plant_app/screens/home/component/header_with_searchbox.dart';

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
          CustomButton(buttonName: 'Recomended', press: (){},),
        ],
      ),
    );
  }
}



