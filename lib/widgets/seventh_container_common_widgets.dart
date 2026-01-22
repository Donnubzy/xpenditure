
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

// ============== MOBILE LAYOUT =====================

class SeventhContainerCommonWidgets extends StatelessWidget {
  const SeventhContainerCommonWidgets({super.key, required this.boldText,
    required this.icon, required this.iconColor, required this.price,
  });
  final String boldText;
  final IconData icon;
  final Color iconColor;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      height: 280,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: iconColor, size: h!/35),
            SizedBox(height: 10),
            Text(boldText,
              style: TextStyle(
                  fontSize: h!/30,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check,
                  size: 10,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Store Unlimited data",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check,
                  size: 10,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Export to pdf, xls, csv",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check,
                  size: 10,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Cloud server support",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text.rich(
                TextSpan(
                    text:  "\$$price/",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                          text: "year",
                          style: TextStyle(
                              color: AppColors.primaryGrey,
                              fontSize: 14
                          )
                      )
                    ]
                )
            ),
            Text(
              "up to 3 user + 1.99 per user",
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryGrey
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 120,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: boldText == "Silver Plan"
                        ? WidgetStatePropertyAll(AppColors.primaryOrange)
                        : WidgetStatePropertyAll(AppColors.primaryWhite) ,
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.primaryOrange),
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                label: Center(
                  child: Text("Get this",
                    style: TextStyle(
                        color: boldText == "Silver Plan" ?
                        AppColors.primaryWhite : AppColors.primaryOrange
                    ),
                  ),
                ),
                icon: Center(
                  child: Icon(Icons.arrow_right_alt,
                    color: boldText == "Silver Plan" ?
                    AppColors.primaryWhite : AppColors.primaryOrange,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ============== DESKTOP LAYOUT =====================

class SeventhContainerCommonRowDesktop extends StatelessWidget {
  const SeventhContainerCommonRowDesktop({super.key, required this.boldText,
    required this.icon, required this.iconColor, required this.price,
  });
  final String boldText;
  final IconData icon;
  final Color iconColor;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: w! / 5,
      color: AppColors.primaryWhite,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: iconColor),
            SizedBox(height: 10),
            Text(boldText,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check,
                  size: 14,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Store Unlimited data",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check,
                  size: 14,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Export to pdf, xls, csv",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check,
                  size: 14,
                  color: AppColors.primaryGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("Cloud server support",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryBlack
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text.rich(
                TextSpan(
                    text:  "\$$price/",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                          text: "year",
                          style: TextStyle(
                              color: AppColors.primaryGrey,
                              fontSize: 14
                          )
                      )
                    ]
                )
            ),
            Text(
              "up to 3 user + 1.99 per user",
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryGrey
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: w!/35),
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: boldText == "Silver Plan"
                        ? WidgetStatePropertyAll(AppColors.primaryOrange)
                        : WidgetStatePropertyAll(AppColors.primaryWhite) ,
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.primaryOrange),
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
                label: Center(
                  child: Text("Get this",
                    style: TextStyle(
                        color: boldText == "Silver Plan" ?
                        AppColors.primaryWhite : AppColors.primaryOrange
                    ),
                  ),
                ),
                icon: Center(
                  child: Icon(Icons.arrow_right_alt,
                    color: boldText == "Silver Plan" ?
                    AppColors.primaryWhite : AppColors.primaryOrange,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
