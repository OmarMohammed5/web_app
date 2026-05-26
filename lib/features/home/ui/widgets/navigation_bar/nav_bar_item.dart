import 'package:flutter/material.dart';
import 'package:web_app/core/service/locator.dart';
import 'package:web_app/core/service/navigation_service.dart';
import 'package:web_app/core/shared/hover/hover_builder.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.title,
    required this.navigationPath,
  });
  final String title;
  final String navigationPath;
  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (isHovered) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: isHovered
              ? (Matrix4.identity()..translate(0, -5, 0))
              : Matrix4.identity(),
          child: TextButton(
            onPressed: () {
              locator<NavigationService>().navigateTo(navigationPath);
            },
            child: Text(
              title,
              style: TextStyle(
                fontSize: isHovered ? 18 : 16,
                color: isHovered ? Colors.green.shade600 : Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
