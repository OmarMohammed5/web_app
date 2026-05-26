import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/action_button/action_button.dart';
import 'package:web_app/features/home/ui/widgets/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 55,
      children: [
        CourseDetails(),
        ActionButton(title: "Join Course"),
      ],
    );
  }
}
