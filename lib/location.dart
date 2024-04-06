import 'package:flutter/material.dart';
import 'package:weather_app/city_model.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<City> citiesToBeSelect =
      City.cities.where((city) => city.isDefault == false).toList();
  List<City> selectedCity = City.getSelectedCity();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose a Location'),
        ),
        body: ListView.builder(
          itemCount: citiesToBeSelect.length,
          itemBuilder: (BuildContext context, int iter) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 23),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: size.height * 0.08,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(75, 255, 255, 255)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(color: Color.fromARGB(51, 144, 144, 144))
                  ]),
              child: Row(
                children: [
                  Text(
                    citiesToBeSelect[iter].city,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            );
          },
        ));
  }
}
