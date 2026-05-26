import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/navigation_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.navigationPath,
  });
  final String title;
  final IconData icon;
  final String navigationPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        spacing: 10,
        children: [
          Icon(icon),
          NavBarItem(title: title, navigationPath: navigationPath),
        ],
      ),
    );
  }
}
