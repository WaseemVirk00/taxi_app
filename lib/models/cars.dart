class CarItem {
  final String category;
  final String brand;
  final double price;
  final String path;
  final String color;
  final String seats;
  final String fuel;
  final String model;

  CarItem(
      {required this.category,
      required this.brand,
      required this.price,
      required this.path,
      required this.color,
      required this.seats,
      required this.fuel,
      required this.model});
}

CarsList allCars = CarsList(cars: [
  CarItem(
      category: 'Hatchback Cars',
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarItem(
      category: 'Sedan Cars',
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarItem(
      category: 'Luxury Cars',
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarItem(
      category: '7 Seaters',
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarItem(
      category: '13-17 Seaters',
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      category: '18-27 Seaters',
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      category: '40-45 Seaters ',
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      category: 'Wedding Cars',
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({required this.cars});
}
