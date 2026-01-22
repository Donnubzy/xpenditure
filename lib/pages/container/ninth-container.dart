
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

class NinthContainer extends StatelessWidget {
  const NinthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ninthContainerMobileView(),
      desktop: ninthContainerDesktopView(),
    );
  }
}

// ============== MOBILE LAYOUT =====================

Widget ninthContainerMobileView(){
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(containerImage),
        fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        height: 30,
        width: 90,
        child: ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.primaryOrange,
            size: 10
          ),
          label: Text(
              "Try free demo",
              style: TextStyle(
                  color: AppColors.primaryOrange,
                  fontSize: 8
              )
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primaryWhite),
            elevation: WidgetStatePropertyAll(0),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
            ))
          ),
        ),
      ),
    ),
  );
}

// ============== DESKTOP LAYOUT =====================

Widget ninthContainerDesktopView(){
  return Container(
    height: h!,
    width: w!,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(containerImage),
            fit: BoxFit.fitWidth,
        )
    ),
    child: Center(
      child: Container(
        margin: EdgeInsets.only(top: 90),
        height: 55,
        width: 220,
        child: ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.primaryOrange,
            size: h! / 40,
          ),
          label: Text(
              "Try free demo",
              style: TextStyle(
                  color: AppColors.primaryOrange,
                fontSize: h! / 40
              )
          ),
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.primaryWhite),
            elevation: WidgetStatePropertyAll(0),
          ),
        ),
      ),
    ),
  );
}