import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final VoidCallback toggleTheme;

  const Settings({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: toggleTheme,
          child: const Text('Tema Değiştir'),
        ),
      ),
    );
  }
}
