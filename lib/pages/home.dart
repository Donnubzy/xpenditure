
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/nav_bar.dart';
import 'package:xpenditure/pages/container/first_container.dart';
import 'package:xpenditure/pages/container/second_container.dart';
import 'package:xpenditure/pages/container/third_container.dart';
import 'package:xpenditure/pages/container/fourth_container.dart';
import 'package:xpenditure/pages/container/fifth_container.dart';
import 'package:xpenditure/pages/container/sixth_container.dart';
import 'package:xpenditure/pages/container/seventh_container.dart';
import 'package:xpenditure/pages/container/eight_container.dart';
import 'package:xpenditure/pages/container/ninth-container.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            FirstContainer(),
            SecondContainer(),
            ThirdContainer(),
            FourthContainer(),
            FifthContainer(),
            SixthContainer(),
            SeventhContainer(),
            EightContainer(),
            NinthContainer()
          ],
        ),
      ),
    );
  }
}
