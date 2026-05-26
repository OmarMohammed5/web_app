import 'package:flutter/material.dart';
import 'package:web_app/core/routing/routes.dart';
import 'package:web_app/core/service/locator.dart';
import 'package:web_app/core/service/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final navigationService = locator<NavigationService>();
        if (navigationService.currentRoute != Routes.homePage) {
          locator<NavigationService>().navigateToReplacement(Routes.homePage);
        }
        // else >> dont navigate never
        // return null;
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/icons/Hummming.png'),
      ),
    );
  }
}
