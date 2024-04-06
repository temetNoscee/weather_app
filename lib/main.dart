import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';
import 'package:weather_app/location.dart';
import 'package:weather_app/settings.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  WeatherAppState createState() => WeatherAppState();
}

class WeatherAppState extends State<WeatherApp> {
  ThemeData _themeData = ThemeData.light();

  void toggleTheme() {
    setState(() {
      _themeData = _themeData.brightness == Brightness.dark
          ? ThemeData.light()
          : ThemeData.dark();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => Settings(toggleTheme: toggleTheme),
        '/location': (context) => const Location(),
      },
    );
  }
}
