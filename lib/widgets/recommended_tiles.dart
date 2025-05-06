import 'package:ecom_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/recommended_model.dart';

class RecommendedTile extends StatelessWidget {
  final RecommendedModel item;
  const RecommendedTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Colors.grey.shade200,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(item.image!, fit: BoxFit.contain),
                ),
              ),
              Text(
                item.title!,
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
                    style: const TextStyle(color: orangeColor, fontSize: 20),
                  ),
                  const Icon(Icons.add, color: orangeColor),
                ],
              ),
            ],
          ),
        ),
        // Favorite icon
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
    );
  }
}
