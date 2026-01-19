
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpenditure/utils/constants.dart';
import 'package:xpenditure/widgets/common_containers.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: thirdContainerMobileView(),
      desktop: thirdContainerDesktopView(),
    );
  }

  // ============== MOBILE LAYOUT =====================

  Widget thirdContainerMobileView(){
    return CommonMobileContainers(
        s1: "ALWAYS ONLINE",
        s2: "Real-time \nsupport \nwith cloud",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim "
            "accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper"
            " eget ut.",
        image: illustrationOne,
    );
  }

  // ============== DESKTOP LAYOUT =====================

  Widget thirdContainerDesktopView() {
    return CommonDesktopContainers(
        s1: "ALWAYS ONLINE",
        s2: "Real-time \nsupport \nwith cloud",
        s3: "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim "
            "accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper"
            " eget ut.",
        image: illustrationOne,
        isImageLeft: false
    );
  }
}
