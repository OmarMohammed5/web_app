import 'package:flutter/material.dart';
import 'package:web_app/core/shared/hover/hover_controller.dart';

class HoverBuilder extends StatefulWidget {
  const HoverBuilder({super.key, required this.builder});
  final Widget Function(bool isHovered) builder;
  @override
  State<HoverBuilder> createState() => _HoverBuilderState();
}

class _HoverBuilderState extends State<HoverBuilder> {
  // Create an Controller to manage the hover state
  final HoverController _hoverController = HoverController();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        _hoverController.onHover(true);
        setState(() {});
      },
      onExit: (_) {
        _hoverController.onHover(false);
        setState(() {});
      },
      child: widget.builder(_hoverController.isHovered),
    );
  }
}
