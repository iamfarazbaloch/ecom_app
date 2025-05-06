class CategoryModel {
  String? name;
  String? image;
  String? price;
  CategoryModel({this.name, this.image, this.price});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    name: 'Quinoa Fruit Salad',
    image: 'assets/images/breakfast.png',
    price: 'N 2000',
  ),
  CategoryModel(
    name: 'Tropical Fruit Salad',
    image: 'assets/images/tropical.png',
    price: 'N 8000',
  ),
  CategoryModel(
    name: 'Kiwi Fruit Salad',
    image: 'assets/images/kiwi.png',
    price: 'N 10000',
  ),
];
