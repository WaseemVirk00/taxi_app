class CarCategoryItem {
  final String brand;
  final double price;
  final String path;
  final String color;
  final String seats;
  final String fuel;
  final String model;

  CarCategoryItem(
      {required this.brand,
      required this.price,
      required this.path,
      required this.color,
      required this.seats,
      required this.fuel,
      required this.model});
}

CarsList allCars = CarsList(cars: [
  CarCategoryItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarCategoryItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarCategoryItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarCategoryItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarCategoryItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarCategoryItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
  CarCategoryItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarCategoryItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarCategoryItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarCategoryItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarCategoryItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarCategoryItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
  CarCategoryItem(
      brand: 'Honda Civic',
      price: 123,
      color: 'Grey',
      seats: '4',
      fuel: '4L',
      model: '2018',
      path: 'assets/availablecars/car1.jpg'),
  CarCategoryItem(
      brand: 'Land Rover',
      price: 223,
      color: 'Grey',
      seats: '6',
      fuel: '19L',
      model: '2016',
      path: 'assets/availablecars/car2.jpg'),
  CarCategoryItem(
      brand: 'Mercedes Benz SLS',
      price: 203,
      color: 'Red',
      seats: '5',
      fuel: '6L',
      model: '2019',
      path: 'assets/availablecars/car3.jpg'),
  CarCategoryItem(
      brand: 'Audi A6',
      price: 190,
      color: 'Grey',
      seats: '5',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car4.jpg'),
  CarCategoryItem(
      brand: 'Jaguar',
      price: 200,
      color: 'White',
      seats: '6',
      fuel: '10L',
      model: '2019',
      path: 'assets/availablecars/car5.jpg'),
  CarCategoryItem(
      brand: 'BMW',
      price: 123,
      color: 'Grey',
      seats: '6',
      fuel: '6L',
      model: '2018',
      path: 'assets/availablecars/car6.jpg'),
]);

class CarsList {
  List<CarCategoryItem> cars;

  CarsList({required this.cars});
}
