import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20),
                  boxShadow:  [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value){},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg")
                      ],
                    ),
                  ),
            )
            )
          ]),
        )
      ],
    );
  }
}
