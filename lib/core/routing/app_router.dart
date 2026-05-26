import 'package:flutter/material.dart';
import 'package:web_app/core/routing/routes.dart';
import 'package:web_app/features/about/about_page.dart';
import 'package:web_app/features/episodes/episodes_page.dart';

import 'package:web_app/features/home/ui/home_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;
    // final String classId = settings.arguments as String;

    switch (settings.name) {
      case Routes.homePage:
        return _getPageRoute(const HomePage());
      case Routes.episodesPage:
        return _getPageRoute(const EpisodesPage());
      case Routes.aboutPage:
        return _getPageRoute(const AboutPage());

      default:
        return null;
    }
  }

  // Get Page Route
  PageRoute _getPageRoute(Widget child) {
    return _fadeRoute(child: child);
  }
}

// ignore: camel_case_types
class _fadeRoute extends PageRouteBuilder {
  final Widget child;

  _fadeRoute({required this.child})
    : super(
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => child,
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
      );
}
