import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/action_button/action_button.dart';
import 'package:web_app/features/home/ui/widgets/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CourseDetails(),
        Expanded(
          child: Center(child: ActionButton(title: 'Join Course')),
        ),
      ],
    );
  }
}
