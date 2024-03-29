import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Row(children: [
            Text(
              'Hi Uishopy!',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Image.asset("assets/images/logo.png")
          ]),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus!.unfocus();
                        },
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // Suffix(SuffixIcon) is not working properly with SVG
                          // That why we use row instead suffixIcon!
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg")
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
