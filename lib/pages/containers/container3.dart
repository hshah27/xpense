import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/utils/colors.dart';
import 'package:xpense/utils/constants.dart';
import 'package:xpense/widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

// ===========Desktop===============
  Widget DesktopContainer3() {
    return CommomContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }

// =============MOBILE==================
  Widget MobileContainer3() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }
}
