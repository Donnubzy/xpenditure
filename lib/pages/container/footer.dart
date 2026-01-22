
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/footer_widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: footerContainerMobileView(),
      desktop: footerContainerDesktopView(),
    );
  }
}

// ============== MOBILE LAYOUT =====================

Widget footerContainerMobileView(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    height: 1150,
    width: double.infinity,
    child: ListView(
      children: [
        SizedBox(
            height: 100,
            child: companyLogo()
        ),
        SizedBox(height: 50),
        Center(child: footerTexts(text: "LINKS", fontSize: 25)),
        SizedBox(height: 20),
        footerLinks(text: "Home"),
        footerLinks(text: "About Us"),
        footerLinks(text: "Careers"),
        footerLinks(text: "Pricing"),
        footerLinks(text: "Features"),
        footerLinks(text: "Blog"),
        SizedBox(height: 50),
        Center(child: footerTexts(text: "LEGAL", fontSize: 25)),
        SizedBox(height: 20),
        footerLinks(text: "Terms of use"),
        footerLinks(text: "Terms of conditions"),
        footerLinks(text: "Privacy policy"),
        footerLinks(text: "Cookies policy"),
        SizedBox(height: 50),
        Center(child: footerTexts(text: "NEWS LETTER", fontSize: 25)),
        SizedBox(height: 20),
        Center(
          child: Text(
            "Over 25000 people have subscribed",
            style: TextStyle(
                color: AppColors.primaryGrey,
                fontSize: 16
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: w!/1.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: AppColors.primaryGrey)
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(0),
                        backgroundColor: WidgetStatePropertyAll(
                            AppColors.primaryOrange),
                        shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        )
                    ),
                    child: Text("Subscribe",
                      style: TextStyle(
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            "We don't sell your email and spam",
            style: TextStyle(
                color: AppColors.primaryGrey,
                fontSize: 12
            ),
          ),
        ),
        SizedBox(height: 50),
        Column(
          children: [
            footerLinks(text: "Privacy & Terms"),
            footerLinks(text: "Contact Us"),
            footerTexts(text: "Copyright @ 2026 xpenditure", fontSize: 15),
            SizedBox(height: 20),
            footerIcons(icon: fb),
            footerIcons(icon: linkedIn)
          ],
        )
      ],
    ),
  );
}

// ============== DESKTOP LAYOUT =====================

Widget footerContainerDesktopView(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
    height: 530,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 70,
                child: companyLogo()
            ),
            Column(
              children: [
                footerTexts(text: "LINKS", fontSize: 25),
                SizedBox(height: 20),
                footerLinks(text: "Home"),
                footerLinks(text: "About Us"),
                footerLinks(text: "Careers"),
                footerLinks(text: "Pricing"),
                footerLinks(text: "Features"),
                footerLinks(text: "Blog"),
              ],
            ),
            Column(
              children: [
                footerTexts(text: "LEGAL", fontSize: 25),
                SizedBox(height: 20),
                footerLinks(text: "Terms of use"),
                footerLinks(text: "Terms of conditions"),
                footerLinks(text: "Privacy policy"),
                footerLinks(text: "Cookies policy"),
              ],
            ),
            Column(
              children: [
                footerTexts(text: "NEWS LETTER", fontSize: 25),
                SizedBox(height: 20),
                Text(
                  "Over 25000 people have subscribed",
                  style: TextStyle(
                    color: AppColors.primaryGrey,
                    fontSize: 18
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: w!/5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: AppColors.primaryGrey)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                                elevation: WidgetStatePropertyAll(0),
                                backgroundColor: WidgetStatePropertyAll(
                                    AppColors.primaryOrange),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                )
                                )
                            ),
                            child: Text("Subscribe",
                              style: TextStyle(
                                  color: AppColors.primaryWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "We don't sell your email and spam",
                  style: TextStyle(
                      color: AppColors.primaryGrey,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                footerLinks(text: "Privacy & Terms"),
                SizedBox(width: 20),
                footerLinks(text: "Contact Us"),
              ],
            ),
            footerTexts(text: "Copyright @ 2026 xpenditure", fontSize: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                footerIcons(icon: fb),
                SizedBox(width: 20),
                footerIcons(icon: linkedIn)
              ],
            )
          ],
        )
      ],
    ),
  );
}