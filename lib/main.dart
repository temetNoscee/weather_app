import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts
              .ubuntuMonoTextTheme(), // Varsayılan olarak kullanmak istediğiniz Google Fonts'u belirtin
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
        });
  }
}
