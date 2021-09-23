class CarsCategories {
  CarsCategories({
    required this.item_names,
    required this.image_path,
    required this.subcategoryItem,
  });

  String item_names;
  String image_path;
  List<SubcategoryItem> subcategoryItem;
}

class SubcategoryItem {
  SubcategoryItem({
    required this.sub_item_names,
    required this.sub_image_path,
  });

  String sub_item_names;
  String sub_image_path;
}

CategoriesList allItems = CategoriesList(items: [
  CarsCategories(
    item_names: 'Car',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Mini',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Go',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Plus',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Business',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: '6-7 Seater',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Carry Bolan Dabba',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Suzuki Every',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Honda BRV',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Suzuki APV',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: '9-17 Seater',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Toyota 224',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Toyota 214',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Grand Strax',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Carnival',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: '22-28 Seater',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Toyota 4c Saloon',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Toyota Coaster',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: '42-46 Seater',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Youtong Bus',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Daewoo Bus',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Old Model Bus',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: 'Luxury - SUV\'S',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'Landcruisor Prado',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Landcruisor V8',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
  CarsCategories(
    item_names: 'Loader',
    image_path: 'assets/images/splash_car.png',
    subcategoryItem: [
      SubcategoryItem(
        sub_item_names: 'PICK UP',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Shahzor',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Mini Mazda',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Full Size Mazda',
        sub_image_path: 'assets/images/splash_car.png',
      ),
      SubcategoryItem(
        sub_item_names: 'Truck',
        sub_image_path: 'assets/images/splash_car.png',
      ),
    ],
  ),
]);

class CategoriesList {
  List<CarsCategories> items;

  CategoriesList({required this.items});
}
