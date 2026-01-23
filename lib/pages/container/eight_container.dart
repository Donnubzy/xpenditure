
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

class EightContainer extends StatelessWidget {
  const EightContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => eightContainerMobileView(),
      desktop: (context) => eightContainerDesktopView(),
    );
  }
}

// ============== MOBILE LAYOUT =====================

Widget eightContainerMobileView(){
  return Container(
    height: h!,
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    child: Column(
      children: [
        Text(
          "We have millions \nof best wishers",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: w! / 15,
              height: 1.1,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (_,i) => SizedBox(height: 5,),
            scrollDirection: Axis.vertical,
            itemBuilder: (_,i) {
              return Container(
                  height: h!/3,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15, bottom: 0),
                  decoration: BoxDecoration(
                      color: containerColors[i],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                      )
                  ),
                  child: mobileContainerContents(textSize: 15, avatarSize: 10)
              );
            },
          ),
        )
      ],
    ),
  );
}

Widget mobileContainerContents({required double textSize, required double avatarSize}){
  return Container(
    color: AppColors.primaryWhite,
    height: 170,
    width: w!/4.5,
    margin: EdgeInsets.only(top: 20, bottom: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Eleifend fames amet, fames enim. \nUllamcorper pellentesque ac "
                "volutpat \nnibh aliquet et, ut netus. Vel, fringilla \nsit eros "
                "pretium felis massa mauris, \naliquam congue.",
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: textSize
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: avatarSize,
              child: Image.asset(illustrator, fit: BoxFit.contain,),
            ),
            SizedBox(width: 5),
            Text(
              "Cameron Williamson,",
              style: TextStyle(
                  color: AppColors.primaryBlack,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 5),
            Text(
              "CEO",
              style: TextStyle(
                  color: AppColors.primaryGrey,
                  fontSize: textSize
              ),
            )
          ],
        )
      ],
    ),
  );
}

// ============== DESKTOP LAYOUT =====================

Widget eightContainerDesktopView(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    height: 530,
    child: Column(
      children: [
        Expanded(
          child: Text(
            "We have millions of \nbest wishers",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: w! / 20,
                height: 1.1,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (_,i) => SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,i) {
              return Container(
                  height: 70,
                  margin: EdgeInsets.only(top: 15, bottom: 0),
                  decoration: BoxDecoration(
                    color: containerColors[i],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  child: desktopContainerContents(textSize: 15, avatarSize: 10)
              );
            },
          ),
        )
      ],
    ),
  );
}

Widget desktopContainerContents({required double textSize, required double avatarSize}){
  return Container(
    color: AppColors.primaryWhite,
    height: 50,
    width: w!/4.5,
    margin: EdgeInsets.only(top: 20, bottom: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Eleifend fames amet, fames enim. \nUllamcorper pellentesque ac "
                "volutpat \nnibh aliquet et, ut netus. Vel, fringilla \nsit eros "
                "pretium felis massa mauris, \naliquam congue.",
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: textSize
              ),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: avatarSize,
              child: Image.asset(illustrator, fit: BoxFit.contain,),
            ),
            SizedBox(width: 5),
            Text(
              "Cameron Williamson,",
              style: TextStyle(
                  color: AppColors.primaryBlack,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 5),
            Text(
              "CEO",
              style: TextStyle(
                  color: AppColors.primaryGrey,
                  fontSize: textSize
              ),
            )
          ],
        )
      ],
    ),
  );
}
