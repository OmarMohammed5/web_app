import 'package:flutter/material.dart';
import 'package:web_app/core/service/locator.dart';
import 'package:web_app/saas_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const SaasApp());
}
