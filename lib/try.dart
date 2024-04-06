import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    // Diğer tema ayarlarını buraya ekleyebilirsiniz
  );

  final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    // Diğer tema ayarlarını buraya ekleyebilirsiniz
  );

  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? _darkTheme : _lightTheme,
      home: HomePage(toggleTheme: _toggleTheme),
    );
  }
}

class HomePage extends StatelessWidget {
  final Function toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hava Durumu Uygulaması'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SettingsPage(toggleTheme: toggleTheme)),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Konumunuz'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LocationSelectionPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LocationSelectionPage extends StatelessWidget {
  const LocationSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konum Seçme'),
      ),
      body: const Center(
        child: Text('Konum Seçme Sayfası'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final Function toggleTheme;

  const SettingsPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            toggleTheme();
          },
          child: const Text('Tema Değiştir'),
        ),
      ),
    );
  }
}
