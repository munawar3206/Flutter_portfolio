import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class signWithText extends StatelessWidget {
  const signWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Image.asset(
          "assets/images/sign.png",
          height: 100,
        ),
      ],
    );
  }
}
