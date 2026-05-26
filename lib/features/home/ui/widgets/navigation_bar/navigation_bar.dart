import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/home/ui/widgets/navigation_bar/nav_bar_mobile.dart';
import 'package:web_app/features/home/ui/widgets/navigation_bar/nav_bar_tablet_desktop.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const NavBarMobile();
      },
      tablet: (context) {
        return const NavBarTabletDesktop();
      },
      // desktop: (context) {
      //   return const NavBarTabletDesktop();
      // },
    );
  }
}
