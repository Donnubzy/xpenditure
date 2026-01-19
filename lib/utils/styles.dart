
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/colors.dart';

ButtonStyle borderButtonStyle = ButtonStyle(
  elevation: WidgetStatePropertyAll(0),
  backgroundColor: WidgetStatePropertyAll(Colors.white),
  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
    side: BorderSide(color: AppColors.primaryOrange),
    borderRadius: BorderRadius.circular(10)
  ))
);

// Widget entryWidget(Widget widget) {
//   return Entry(
//       opacity: 0.1,
//       duration: Duration(milliseconds: 500),
//       yOffset: 100,
//       curve: Curves.easeIn,
//       child: widget);
// }