import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final String text;
  const InfoCard({super.key, required this.text});
  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Card(
        margin: EdgeInsets.only(top: screenHeight * 0.02),
        color: const Color.fromARGB(195, 249, 250, 252),
        elevation: 7,
        child: SizedBox(
          height: screenHeight * 0.08,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                const Icon(Icons.waves_rounded), // Rüzgar ikonu
                const SizedBox(width: 9.0), // İkon ile değer arasında boşluk
                Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ), // Rüzgar hızı değeri
              ],
            ),
          ),
        ),
      ),
    );
  }
}
