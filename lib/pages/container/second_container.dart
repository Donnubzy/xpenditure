
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: secondContainerMobileView(context),
      desktop: secondContainerDesktopView(),
    );
  }

  // ============== MOBILE LAYOUT =====================

  Widget secondContainerMobileView(BuildContext context){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.primaryOrange
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(dashboard),
                  fit: BoxFit.contain
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                companyLogo(fb),
                SizedBox(height: 10,),
                companyLogo(google),
                SizedBox(height: 10,),
                companyLogo(cocaCola),
                SizedBox(height: 10,),
                companyLogo(linkedIn),
                SizedBox(height: 10,),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============== DESKTOP LAYOUT =====================

  Widget secondContainerDesktopView() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryOrange
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    width: 320,
                    height: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vectorOne),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    width: 320,
                    height: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vectorTwo),
                          fit: BoxFit.contain
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 70,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 710,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(dashboard)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.primaryWhite,
            padding: EdgeInsets.symmetric(vertical: 60 , horizontal: w!/10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocaCola),
                companyLogo(linkedIn),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 35,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
        )
      ),
    );
  }
}

