
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/common_containers.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => fourthContainerMobileView(),
      desktop: (context) => fourthContainerDesktopView(),
    );
  }

  // ============== MOBILE LAYOUT =====================

  Widget fourthContainerMobileView(){
    return CommonMobileContainers(
        s1: "FREE SOME COST",
        s2: "Save cost \nfor you \nand family",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim "
            "accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper "
            "eget ut.",
        image: illustrationTwo,
    );
  }

  // ============== DESKTOP LAYOUT =====================

  Widget fourthContainerDesktopView() {
    return CommonDesktopContainers(
        s1: "FREE SOME COST",
        s2: "Save cost \nfor you \nand family",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim "
            "accumsan nisi, tincidunt vel. Enim \nipsum, at quis ullamcorper "
            "eget ut.",
        image: illustrationTwo,
        isImageLeft: true
    );
  }
}