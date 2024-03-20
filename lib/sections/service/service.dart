import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/modules/services.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
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
            SizedBox(width: 20), // Added SizedBox for spacing
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
                  "Service Offering",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    services.length * 2 - 1,
                    (index) {
                      if (index.isEven) {
                        return ServiceCard(index: index ~/ 2);
                      } else {
                        return SizedBox(
                          width: 20,
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  const ServiceCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow:
              isHover ? [kDefaultCardShadow] : [], // Only show shadow on hover
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 30),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  services[widget.index].image,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
