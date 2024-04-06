class City {
  bool isSelected;
  final String city;
  final bool isDefault;

  City({required this.isSelected, required this.city, required this.isDefault});

  static List<City> cities = [
    City(isSelected: false, city: 'İstanbul', isDefault: true),
    City(isSelected: true, city: 'Ankara', isDefault: false),
    City(isSelected: false, city: 'İzmir', isDefault: false),
    City(isSelected: false, city: 'Bursa', isDefault: false),
    City(isSelected: false, city: 'Antalya', isDefault: false),
    City(isSelected: false, city: 'Adana', isDefault: false),
    City(isSelected: false, city: 'Gaziantep', isDefault: false),
    City(isSelected: false, city: 'Konya', isDefault: false),
    City(isSelected: false, city: 'Mersin', isDefault: false),
    City(isSelected: false, city: 'Samsun', isDefault: false),
  ];

  static List<City> getSelectedCity() {
    List<City> selectedCities = City.cities;
    return selectedCities.where((city) => city.isSelected == true).toList();
  }
}
