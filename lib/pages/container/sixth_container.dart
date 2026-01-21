
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/sixth_container_common_widgets.dart';

class SixthContainer extends StatelessWidget {
  const SixthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: sixthContainerMobileView(),
      desktop: sixthContainerDesktopView(),
    );
  }
}

// ============== MOBILE LAYOUT =====================

Widget sixthContainerMobileView(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    child: Column(
      children: [
        Text(
          "The Product \nwe work with.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: w! / 10,
              height: 1.1,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim "
              "accumsan nisi, \ntincidunt vel. Enim ipsum, amet \nquis "
              "ullamcorper eget ut.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryGrey,
            fontSize: w! / 35,
          ),
        ),
        SizedBox(height: 20),
        SixthContainerCommonWidgets(
          boldText: "Cross platform",
          greyText: "Elit esse cillum dolore \neu fugiat nulla pariatur",
          icon: Icons.laptop,
          iconColor: Colors.orangeAccent,
          bgColor: Colors.orangeAccent.shade100,
        ),
        SizedBox(height: 10),
        SixthContainerCommonWidgets(
          boldText: "Cloud server",
          greyText: "Elit esse cillum dolore \neu fugiat nulla pariatur",
          icon: Icons.cloud_outlined,
          iconColor: Colors.pinkAccent,
          bgColor: Colors.pinkAccent.shade100,
        ),
        SizedBox(height: 10),
        SixthContainerCommonWidgets(
          boldText: "Pure Javascript",
          greyText: "Elit esse cillum dolore \neu fugiat nulla pariatur",
          icon: Icons.gas_meter,
          iconColor: Colors.indigoAccent.shade400,
          bgColor: Colors.indigoAccent.shade100,
        ),
      ],
    ),
  );
}

// ============== DESKTOP LAYOUT =====================

Widget sixthContainerDesktopView(){
  return Container(
    height: 530,
    margin: EdgeInsets.only(left: w!/10, right: w!/10, top: 40, bottom: 120),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "The Product we \nwork with.",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColors.primaryBlack,
                  fontSize: w! / 20,
                  height: 1.1,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim "
                  "accumsan \nnisi, tincidunt vel. Enim ipsum, amet \nquis "
                  "ullamcorper eget ut.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryGrey,
                fontSize: w! / 80,
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SixthContainerCommonRowDesktop(
              boldText: "Cross platform",
              greyText: "Elit esse cillum dolore eu fugiat \nnulla pariatur",
              icon: Icons.laptop,
              iconColor: Colors.orangeAccent,
              bgColor: Colors.orangeAccent.shade100,
            ),
            SixthContainerCommonRowDesktop(
              boldText: "Cloud server",
              greyText: "Elit esse cillum dolore eu fugiat \nnulla pariatur",
              icon: Icons.cloud_outlined,
              iconColor: Colors.pinkAccent,
              bgColor: Colors.pinkAccent.shade100,
            ),
            SixthContainerCommonRowDesktop(
              boldText: "Pure Javascript",
              greyText: "Elit esse cillum dolore eu fugiat \nnulla pariatur",
              icon: Icons.gas_meter,
              iconColor: Colors.indigoAccent.shade400,
              bgColor: Colors.indigoAccent.shade100,
            ),
          ],
        )
      ],
    ),
  );
}
