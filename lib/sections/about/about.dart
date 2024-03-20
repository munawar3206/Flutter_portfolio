import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/componet/textsign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    "About \nmy story",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                  ),
                                  Image.asset("assets/images/sign.png")
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 50,
                            // ),
                            Flexible(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  double screenWidth = constraints.maxWidth;
                                  double fontSize = screenWidth > 768 ? 16 : 14;

                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: kTextColor,
                                        fontSize: fontSize,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: OutlinedButton(
                    // padding: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), // Shape property is correctly defined here

                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: Image.asset(
                            "assets/images/hand.png",
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: kDefaultPadding,
                        ),
                        Text(
                          "Hire Me!",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                FittedBox(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFEBF0F9)),
                    ),
                    // padding: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), // Shape property is correctly defined here

                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: Image.asset(
                            "assets/images/download.png",
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: kDefaultPadding,
                        ),
                        Text(
                          "Download CV",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
