
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

// ============== MOBILE LAYOUT =====================

class SixthContainerCommonWidgets extends StatelessWidget {
  const SixthContainerCommonWidgets({super.key, required this.boldText,
    required this.greyText, required this.icon, required this.bgColor,
    required this.iconColor,
  });
  final String boldText, greyText;
  final IconData icon;
  final Color bgColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: h!/ 20,
              decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
              child: Center(child: Icon(icon, color: iconColor, size: h!/35,))
          ),
          Text(boldText,
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: h!/ 30,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(greyText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryGrey,
                fontSize: h!/ 50
            ),
          ),
          boldText == "Cloud server" ? Icon(Icons.arrow_right_alt) : Container()
        ],
      ),
    );
  }
}

// ============== DESKTOP LAYOUT =====================

class SixthContainerCommonRowDesktop extends StatelessWidget {
  const SixthContainerCommonRowDesktop({super.key, required this.boldText,
    required this.greyText, required this.icon, required this.bgColor,
    required this.iconColor,
  });
  final String boldText, greyText;
  final IconData icon;
  final Color bgColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: w! / 5,
      color: AppColors.primaryWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
              decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
              child: Center(child: Icon(icon, color: iconColor, size: 20))
          ),
          Text(boldText,
            style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(greyText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryGrey,
              fontSize: 12
            ),
          ),
          boldText == "Cloud server" ? Icon(Icons.arrow_right_alt) : Container()
        ],
      ),
    );
  }
}
