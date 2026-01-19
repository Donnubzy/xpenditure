
import 'package:flutter/material.dart';
import 'package:xpenditure/pages/home.dart';
import 'package:xpenditure/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpenditure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryOrange,
        fontFamily: "HindSiliguri"
      ),
      home: Home(),
    );
  }
}

