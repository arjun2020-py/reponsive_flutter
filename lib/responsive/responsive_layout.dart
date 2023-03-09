import 'package:flutter/material.dart';

import 'desktop_scffold.dart';
import 'mobile_scffold.dart';
import 'tabelet_scffold.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 576 &&
      MediaQuery.of(context).size.width < 992;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 992;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 992) {
      return const DesktopScffold();
    } else if (size.width >= 576) {
      return const TabletScfflod();
    } else {
      return const MobileScffold();
    }
  }
}
