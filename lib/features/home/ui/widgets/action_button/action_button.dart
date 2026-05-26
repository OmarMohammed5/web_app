import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/features/home/ui/widgets/action_button/action_button_desktop.dart';
import 'package:web_app/features/home/ui/widgets/action_button/action_button_mobile.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return ActionButtonMobile(title: "Join Course");
      },
      desktop: (context) {
        return ActionButtonDesktop(title: "Join Course");
      },
    );
  }
}
