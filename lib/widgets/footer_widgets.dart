
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

Widget footerTexts({required String text, required double fontSize }) {
  return Text(
    text,
    style: TextStyle(
      color: AppColors.primaryBlack,
      fontSize: fontSize,
    ),
  );
}

Widget footerLinks ({required String text}) {
  return TextButton(
      onPressed: (){},
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.primaryBlack,
          fontSize: 16,
          fontWeight: FontWeight.normal
        ),
      )
  );
}

Widget footerIcons({required String icon}) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(icon),
            fit: BoxFit.contain
      )
    ),
  );
}

Widget companyLogo(){
  return Container(
    width: 110,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo))
    ),
  );
}