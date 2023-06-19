import 'package:flutter/material.dart';
import 'package:jawla_app/screens/main_screens/plan_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PlanScreen(),
      ),
    );
  }
}
