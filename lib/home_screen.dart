import 'package:flutter/material.dart';
import 'package:weather_app/info_card.dart';
import 'package:weather/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    //ws = new WeatherFactory(key);
  }

  void getWeather() async {}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 250, 252),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  size: 25.0,
                  color: Color.fromARGB(255, 66, 73, 87),
                )),
            const Expanded(
                child: Center(
                    child: Text(
              'Kaynarca',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 66, 73, 87)),
            ))),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.settings_outlined,
                  size: 25.0,
                  color: Color.fromARGB(255, 66, 73, 87),
                )),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/image.png',
                width: screenWidth / 1.2,
              ),
            ),
            const Text(
              '27°',
              style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 66, 73, 87)),
            ),
            const Text(
              'Long text for long desc',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 142, 39)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const InfoCard(text: 'eee'),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                const InfoCard(text: 'humidity')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
