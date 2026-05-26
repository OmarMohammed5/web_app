import 'package:flutter/material.dart';
import 'package:web_app/core/shared/hover/hover_builder.dart';

class ActionButtonDesktop extends StatelessWidget {
  const ActionButtonDesktop({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (isHovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),

          transform: isHovered
              ? (Matrix4.identity()..translate(0, -5, 0))
              : Matrix4.identity(),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: isHovered
                  ? const Color.fromARGB(255, 31, 53, 32)
                  : const Color.fromARGB(255, 18, 145, 92),
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
