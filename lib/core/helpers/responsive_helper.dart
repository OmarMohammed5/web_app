import 'package:flutter/material.dart';

/// Helper class for responsive design utilities
class ResponsiveHelper {
  /// Get responsive padding based on screen width
  static EdgeInsets getResponsivePadding(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      // Mobile
      return const EdgeInsets.symmetric(horizontal: 20, vertical: 30);
    } else if (width < 1024) {
      // Tablet
      return const EdgeInsets.symmetric(horizontal: 40, vertical: 40);
    } else {
      // Desktop
      return const EdgeInsets.symmetric(horizontal: 70, vertical: 60);
    }
  }

  /// Get responsive font size
  static double getResponsiveFontSize(
    BuildContext context, {
    required double mobileSize,
    required double tabletSize,
    required double desktopSize,
  }) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return mobileSize;
    } else if (width < 1024) {
      return tabletSize;
    } else {
      return desktopSize;
    }
  }

  /// Get responsive gap/spacing
  static double getResponsiveGap(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return 15;
    } else if (width < 1024) {
      return 25;
    } else {
      return 40;
    }
  }

  /// Get responsive horizontal gap
  static double getResponsiveHorizontalGap(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return 10;
    } else if (width < 1024) {
      return 20;
    } else {
      return 40;
    }
  }

  /// Get max width for content
  static double getMaxContentWidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return width - 40; // Account for padding
    } else if (width < 1024) {
      return width - 80;
    } else {
      return 1200;
    }
  }

  /// Check if device is mobile
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  /// Check if device is tablet
  static bool isTablet(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 600 && width < 1024;
  }

  /// Check if device is desktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  /// Get button padding based on screen size
  static EdgeInsets getButtonPadding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 28, vertical: 18);
    } else {
      return const EdgeInsets.symmetric(horizontal: 30, vertical: 20);
    }
  }

  /// Get button font size based on screen size
  static double getButtonFontSize(BuildContext context) {
    if (isMobile(context)) {
      return 12;
    } else if (isTablet(context)) {
      return 13;
    } else {
      return 14;
    }
  }
}
