
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/seventh_container_common_widgets.dart';

class SeventhContainer extends StatelessWidget {
  const SeventhContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: seventhContainerMobileView(),
      desktop: seventhContainerDesktopView(),
    );
  }
}

// ============== MOBILE LAYOUT =====================

Widget seventhContainerMobileView(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    child: Column(
      children: [
        Text(
          "Choose your \nflexible plan",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: w! / 20,
              height: 1.1,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        SeventhContainerCommonWidgets(
            boldText: "Starter Plan",
            icon: Icons.work_outline,
            iconColor: Colors.blue.shade300,
            price: 9.99
        ),
        SizedBox(height: 10),
        SeventhContainerCommonWidgets(
            boldText: "Silver Plan",
            icon: Icons.card_giftcard,
            iconColor: AppColors.primaryOrange,
            price: 19.99
        ),
        SizedBox(height: 10),
        SeventhContainerCommonWidgets(
            boldText: "Diamond Plan",
            icon: Icons.workspace_premium,
            iconColor: Colors.deepPurpleAccent.shade200,
            price: 29.99
        ),
      ],
    ),
  );
}

// ============== DESKTOP LAYOUT =====================

Widget seventhContainerDesktopView(){
  return Container(
    height: 530,
    margin: EdgeInsets.only(left: w!/10, right: w!/10, top: 40, bottom: 120),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Choose your flexible plan",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: w! / 20,
              height: 1.1,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SeventhContainerCommonRowDesktop(
                boldText: "Starter Plan",
                icon: Icons.work_outline,
                iconColor: Colors.blue.shade300,
                price: 9.99
            ),
            SeventhContainerCommonRowDesktop(
                boldText: "Silver Plan",
                icon: Icons.card_giftcard,
                iconColor: AppColors.primaryOrange,
                price: 19.99
            ),
            SeventhContainerCommonRowDesktop(
                boldText: "Diamond Plan",
                icon: Icons.workspace_premium,
                iconColor: Colors.deepPurpleAccent.shade200,
                price: 29.99
            ),
          ],
        )
      ],
    ),
  );
}