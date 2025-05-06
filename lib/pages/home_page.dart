import 'package:ecom_app/constant/colors.dart';
import 'package:ecom_app/constant/images.dart';
import 'package:ecom_app/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(menuImage, height: 30, width: 30),
                  Column(
                    children: [
                      Icon(
                        Icons.shopping_basket_sharp,
                        color: orangeColor,
                        size: 30,
                      ),
                      const Gap(5),
                      const Text(
                        'My Basket',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(20),
              const Text(
                'Hello! Tony,\nWhat fruit salad combo do you want today?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              const Gap(20),
              MySearchField(
                controller: controller,
                icon: Icons.search,
                text: 'Search for fruits salad combo',
              ),
              const Gap(20),
              const Text(
                'Recommended Combo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
