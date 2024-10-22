import 'package:app_cafe/pages/home.dart';
import 'package:app_cafe/pages/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Café',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const WeatherHome(), // Aquí defines la pantalla inicial
    );
  }
}
