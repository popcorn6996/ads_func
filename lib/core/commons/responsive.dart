// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget tablet;
  const Responsive({
    Key? key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width > 850;
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width > 1100;
    bool isTablet(BuildContext context) =>
        MediaQuery.of(context).size.width > 850 ||
        MediaQuery.of(context).size.width <= 1100;
    if (isMobile(context)) {
      return mobile;
    } else if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context)) {
      return tablet;
    } //Could end here, Just feel like being thorough, lol.
    else {
      return mobile;
    }
  }
}
