import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/component/body.dart';
import 'package:plant_app/screens/home/component/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}


