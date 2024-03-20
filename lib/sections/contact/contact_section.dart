import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/constants.dart';

class ContectSection extends StatelessWidget {
  const ContectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffbe8f0f9),
          image: DecorationImage(
              image: AssetImage("assets/images/bg_img_2.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            constraints: const BoxConstraints(maxWidth: 1110),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 8,
                  height: 100,
                  color: Colors.black,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0XFFFF0000),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Added SizedBox for spacing
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "For Project inquiry and information",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: kTextColor,
                      ),
                    ),
                    Text(
                      "Contact Me",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF07E24A),
                          fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 1110),
            padding: const EdgeInsets.all(kDefaultPadding * 3),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Socialcard(
                      iconSrc: 'assets/images/whatsapp.png',
                      name: 'Whatsapp',
                      color: const Color.fromARGB(255, 207, 255, 242),
                      press: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Socialcard(
                      iconSrc: 'assets/images/skype.png',
                      name: 'Whatsapp',
                      color: const Color.fromARGB(255, 197, 223, 255),
                      press: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Socialcard(
                      iconSrc: 'assets/images/messanger.png',
                      name: 'Whatsapp',
                      color: const Color.fromARGB(255, 212, 204, 255),
                      press: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
                SizedBox(height: kDefaultPadding*2,),
               ContactForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}


class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
TextFormField()
      ],),
    );
  }
}


class Socialcard extends StatefulWidget {
  const Socialcard({
    super.key, // Add Key? key parameter here
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  }); // Call super constructor with key parameter

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  State<Socialcard> createState() => _SocialcardState();
}

class _SocialcardState extends State<Socialcard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () {
          widget.press();
        },
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                width: 64, // Adjust width as needed
                height: 64, // Adjust height as needed
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
