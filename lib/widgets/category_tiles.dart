import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constant/colors.dart';
import '../model/category_model.dart';

class CategoryTile extends StatelessWidget {
  final CategoryModel item;

  const CategoryTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 16),
      child: Stack(
        children: [
          Card(
            color: item.color,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(item.image!, fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    item.name!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.price!,
                        style: const TextStyle(
                          color: orangeColor,
                          fontSize: 20,
                        ),
                      ),
                      const Icon(Icons.add, color: orangeColor),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 18,
                color: orangeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
