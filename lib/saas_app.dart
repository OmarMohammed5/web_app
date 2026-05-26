import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/layout_template/layout_template.dart';

class SaasApp extends StatelessWidget {
  const SaasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: "Rubik"),
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutTemplate(),
    );
  }
}
