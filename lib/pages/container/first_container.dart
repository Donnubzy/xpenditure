
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => firstContainerMobileView(),
      desktop: (context) => firstContainerDesktopView(),
    );
  }

  // ============== MOBILE LAYOUT =====================

  Widget firstContainerMobileView(){
    return Column(
      children: [
        mobileViewIllustrationImage(),
        mobileViewContainerTexts(),
      ],
    );
  }

  Widget mobileViewIllustrationImage(){
    return Container(
      height: h!/1.2,
      width: w!/1.2,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(illustrationOne),
              fit: BoxFit.contain
          )
      ),
    );
  }

  Widget mobileViewContainerTexts(){
    return Column(
      children: [
        Text(
          "Track your \nExpenses to \nSave Money",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: w!/10,
              fontWeight: FontWeight.bold,
              height: 1.2
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Helps you to organize \nyour income and expenses",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryGrey,
              fontSize: 15          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primaryWhite,
            ),
            label: Text(
                "Try free demo",
                style: TextStyle(
                    color: AppColors.primaryWhite
                )
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.primaryOrange)
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("- Web, iOs, Android",
          style: TextStyle(
              color: AppColors.primaryGrey,
              fontSize: 15
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }

  // ============== DESKTOP LAYOUT =====================

  Widget firstContainerDesktopView(){
    return Container(
      margin: EdgeInsets.only(left: w!/10, right: w!/10, top: 20, bottom: 160),
      child: Row(
        children: [
          Expanded(child: desktopViewContainerTexts()),
          Expanded(child: desktopViewIllustrationImage())
        ],
      ),
    );
  }

  Widget desktopViewContainerTexts(){
    return Column(
      children: [
        Text(
          "Track your \nExpenses to \nSave Money",
          style: TextStyle(
              fontSize: w!/18,
              fontWeight: FontWeight.bold,
              height: 1.2
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Helps you to organize your income and expenses",
          style: TextStyle(
            color: AppColors.primaryGrey,
            fontSize: 22
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 70),
              height: 45,
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.primaryWhite,
                ),
                label: Text(
                  "Try free demo",
                  style: TextStyle(
                      color: AppColors.primaryWhite
                  )
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primaryOrange)
                ),
              ),
            ),
            SizedBox(width: 10),
            Text("- Web, iOs, Android",
              style: TextStyle(
                  color: AppColors.primaryGrey,
                  fontSize: 20
              ),
            )
          ],
        )
      ],
    );
  }

  Widget desktopViewIllustrationImage(){
    return Container(
      height: 450,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(illustrationOne),
              fit: BoxFit.contain
          )
      ),
    );
  }
}
