import 'package:ads_func/core/commons/responsive.dart';
import 'package:ads_func/features/home/screens/desktop/desktop_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: DesktopHomeScreen(),
      tablet: DesktopHomeScreen(),
      desktop: DesktopHomeScreen(),
    );
  }
}
