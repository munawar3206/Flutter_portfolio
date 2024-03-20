import 'package:flutter/material.dart';
import 'package:web_app/sections/topscreen/components/glass_content.dart';

class Person_Pic extends StatelessWidget {
  const Person_Pic({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Padding(
        padding: const EdgeInsets.only(top: 200, right: 80),
        child: Image.asset(
          "assets/images/person (2).png",
          height: 1000,
        ),
      ),
    );
  }
}

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "M",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        Spacer(),
        GlassContent(size: size),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
