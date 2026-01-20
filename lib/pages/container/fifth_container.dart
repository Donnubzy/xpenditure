
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/common_containers.dart';

class FifthContainer extends StatelessWidget {
  const FifthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: fifthContainerMobileView(),
      desktop: fifthContainerDesktopView(),
    );
  }

  // ============== MOBILE LAYOUT =====================

  Widget fifthContainerMobileView(){
    return CommonMobileContainers(
        s1: "USE ANYTIME",
        s2: "Use anytime \nwhen you \nneed",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim "
            "accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper "
            "eget ut.",
        image: illustrationThree,
    );
  }

  // ============== DESKTOP LAYOUT =====================

  Widget fifthContainerDesktopView() {
    return CommonDesktopContainers(
        s1: "USE ANYTIME",
        s2: "Use anytime \nwhen you \nneed",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim "
            "accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper "
            "eget ut.",
        image: illustrationThree,
        isImageLeft: false
    );
  }
}