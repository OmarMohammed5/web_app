import 'package:flutter/material.dart';
import 'package:web_app/core/routing/routes.dart';
import 'package:web_app/features/home/ui/widgets/navigation_drawer/drawer_item.dart';
import 'package:web_app/features/home/ui/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawerMobile extends StatelessWidget {
  const NavigationDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
            title: "Episodes",
            icon: Icons.tv,
            navigationPath: Routes.episodesPage,
          ),
          DrawerItem(
            title: "About",
            icon: Icons.help,
            navigationPath: Routes.aboutPage,
          ),
        ],
      ),
    );
  }
}
