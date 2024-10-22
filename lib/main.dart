import 'package:app_cafe/pages/bottomnav.dart';
import 'package:app_cafe/pages/home.dart';
import 'package:app_cafe/pages/login.dart';
import 'package:app_cafe/pages/onboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Onboard()
    );
  }
}
