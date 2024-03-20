import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/topscreen/components/menu.dart';
import 'package:web_app/sections/topscreen/components/personpic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(bottom: 0, right: 0, child: Person_Pic()),
            Positioned(bottom: 0, child: Menu()),
          ],
        ),
      ),
    );
  }
}
