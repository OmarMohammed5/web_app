import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/home/ui/widgets/home_content/home_content_desktop.dart';
import 'package:web_app/features/home/ui/widgets/home_content/home_content_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => HomeContentMobile(),
      desktop: (context) => HomeContentDesktop(),
    );
  }
}
