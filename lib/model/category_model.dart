import 'package:flutter/material.dart';

class CategoryModel {
  String? name;
  String? image;
  String? price;
  Color? color;
  CategoryModel({this.name, this.image, this.price, this.color});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    name: 'Quinoa Fruit Salad',
    image: 'assets/images/breakfast.png',
    price: 'N 2000',
    color: Color(0xFFFFFAEB),
  ),
  CategoryModel(
    name: 'Tropical Fruit Salad',
    image: 'assets/images/tropical.png',
    price: 'N 8000',
    color: Color(0xFFFEF0F0),
  ),
  CategoryModel(
    name: 'Kiwi Fruit Salad',
    image: 'assets/images/kiwi.png',
    price: 'N 10000',
    color: Color(0xFFF1EFF6),
  ),
];
