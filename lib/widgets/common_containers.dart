
import 'package:flutter/material.dart';
import 'package:xpenditure/utils/colors.dart';
import 'package:xpenditure/utils/constants.dart';

// ============== MOBILE LAYOUT =====================

class CommonMobileContainers extends StatelessWidget {
  const CommonMobileContainers({super.key, required this.s1, required this.s2,
    required this.s3, required this.image});
  final String s1,s2,s3,image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 30),
      // color: AppColors.primaryWhite,
      child: Column(
        children: [
           Container(
             height: 200,
             decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage(image),
                     fit: BoxFit.contain
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(s1.toUpperCase(),
            style: TextStyle(
                color: AppColors.primaryGrey,
                fontSize: 14
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(s2,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: w!/10,
                height: 1.1,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(s3,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_forward_outlined,
              size: 20,
              color: AppColors.primaryOrange,
            ),
            label: Text(
              "Learn more",
              style: TextStyle(
                color: AppColors.primaryOrange,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ============== DESKTOP LAYOUT =====================

class CommonDesktopContainers extends StatelessWidget {
  const CommonDesktopContainers({super.key, required this.s1, required this.s2,
    required this.s3, required this.image, required this.isImageLeft});
  final String s1,s2,s3,image;
  final bool isImageLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      child: Container(
        margin: EdgeInsets.only(left: w!/10, right: w!/10, top: 40, bottom: 120),
        child: Row(
          children: [
            isImageLeft ?
            Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image),
                      fit: BoxFit.contain
                    )
                  ),
                )
            ) : Container() ,
            Column(
              crossAxisAlignment: isImageLeft
                  ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(s1.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.primaryGrey,
                    fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(s2,
                  textAlign: isImageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: AppColors.primaryBlack,
                    fontSize: w! / 20,
                    height: 1.1,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(s3,
                  textAlign: isImageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                      color: AppColors.primaryGrey,
                      fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                  onPressed: (){},
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 20,
                    color: AppColors.primaryOrange,
                  ),
                  label: Text(
                    "Learn more",
                    style: TextStyle(
                      color: AppColors.primaryOrange,
                    ),
                  ),
                )
              ],
            ),
            !isImageLeft
                ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.contain
                      )
                  ),
                )
            ) : Container() ,
          ],
        ),
      ),
    );
  }
}
