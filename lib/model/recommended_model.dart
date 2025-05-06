class RecommendedModel {
  String? image;
  String? title;
  String? price;
  RecommendedModel({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RecommendedModel> recommendedList = [
  RecommendedModel(
    image: 'assets/images/honey.png',
    title: 'Honey Lime Combo',
    price: 'N 2000',
  ),
  RecommendedModel(
    image: 'assets/images/berry.png',
    title: 'Berry Mango Combo',
    price: 'N 8000',
  ),
];
