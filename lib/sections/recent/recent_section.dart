import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/modules/Recentworks.dart';
import 'package:web_app/modules/services.dart';
import 'package:web_app/sections/service/service.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
              image: AssetImage("assets/images/recent_work_bg.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Transform.translate(offset: Offset(0, -80), child: HireMe_card()),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 1110),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 8,
                  height: 100,
                  color: Colors.black,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0XFFFF0000),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "My Strong Arenas",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: kTextColor,
                      ),
                    ),
                    Text(
                      "Recent Works",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: kDefaultPadding * 2.5,
                    ),
                    SizedBox(
                      width: 1000,
                      child: Wrap(
                        spacing: kDefaultPadding,
                        runSpacing: kDefaultPadding * 2,
                        children: List.generate(
                          recentWorks.length,
                          (index) => Recentwork(index: index),
                        ).toList(),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding * 5,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Recentwork extends StatefulWidget {
  const Recentwork({
    super.key,
    this.index,
  });
  final index;

  @override
  State<Recentwork> createState() => _RecentworkState();
}

class _RecentworkState extends State<Recentwork> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category.toUpperCase()),
                    SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text("View details",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HireMe_card extends StatelessWidget {
  const HireMe_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefaultShadow]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starting New Project?",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
