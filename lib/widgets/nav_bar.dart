
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/styles.dart';
import 'package:xpenditure/widgets/footer_widgets.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: desktopNavBar(),
    );
  }


  Widget mobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          companyLogo()
        ],
      ),
    );
  }


  Widget desktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          companyLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About Us"),
              navButton("Pricing"),
              navButton("Feedback"),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
                onPressed: (){},
              style: borderButtonStyle,
              child: Text("Request a Demo",
                style: TextStyle(
                  color: AppColors.primaryOrange
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
  Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: (){},
          child: Text(text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),
          )
      ),
    );
  }
}
