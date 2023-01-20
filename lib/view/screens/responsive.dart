import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget largeMobile;
  final Widget tablet;
  final Widget desktop;
  final double largeMobileConstraint;
  final double tabletConstraint;
  final double desktopConstraint;
  Responsive(
      {required this.largeMobileConstraint,
      required this.tabletConstraint,
      required this.desktopConstraint,
      required this.mobile,
      required this.desktop,
      required this.tablet,
      required this.largeMobile});

  @override
  Widget build(BuildContext context) {
    var responsiveWidth = MediaQuery.of(context).size.width;
    //500.0            700.0   960.0
    if (responsiveWidth > largeMobileConstraint &&
        responsiveWidth <= tabletConstraint) {
      return largeMobile;
    } else if (responsiveWidth > tabletConstraint &&
        responsiveWidth <= desktopConstraint) {
      return tablet;
    } else if (responsiveWidth > desktopConstraint) {
      return desktop;
    }
    return mobile;
  }
}
