import 'package:flutter/material.dart';
import 'package:web_app/sections/about/about.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/recent/recent_section.dart';
import 'package:web_app/sections/topscreen/topscreen.dart';
import 'package:web_app/sections/service/service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            AboutSection(),
            ServiceSection(),
            RecentSection(),
            ContectSection(),
            SizedBox(
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}
