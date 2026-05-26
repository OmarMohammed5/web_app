import 'package:flutter/material.dart';
import 'package:web_app/core/routing/routes.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String currentRoute = Routes.homePage; // to check the current route if needed
  // Navigate to Function >> PushNamed
  Future<dynamic> navigateTo(String routeName) {
    currentRoute = routeName;
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  // Navigate to Function >> PushReplacement
  Future<dynamic> navigateToReplacement(String routeName) {
    currentRoute = routeName;
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  // Go Back Function
  bool goBack() {
    if (navigatorKey.currentState!.canPop()) {
      navigatorKey.currentState!.pop();
      return true;
    }
    return false;
  }
}
