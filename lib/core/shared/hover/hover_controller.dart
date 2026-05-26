import 'package:flutter/material.dart';

class HoverController extends ChangeNotifier {
  bool _isHovered = false;

  bool get isHovered => _isHovered;

  void onHover(bool value) {
    _isHovered = value;
    notifyListeners();
  }
}
