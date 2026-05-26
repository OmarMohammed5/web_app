import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/navigation_bar/nav_bar_logo.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({super.key});

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                Scaffold.of(context).openDrawer();
              });
            },
            icon: Icon(Icons.menu),
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}
