class CarItem {
  final String brand;
  final double price;
  final String path;
  final String color;
  final String seats;
  final String fuel;
  final String model;

  CarItem(
      {required this.brand,
      required this.price,
      required this.path,
      required this.color,
      required this.seats,
      required this.fuel,
      required this.model});
}

CarsList allCars = CarsList(cars: [
  CarItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
  CarItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
  CarItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({required this.cars});
}
