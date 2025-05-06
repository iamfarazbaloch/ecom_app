import 'package:ecom_app/constant/colors.dart';
import 'package:ecom_app/constant/images.dart';
import 'package:ecom_app/model/recommended_model.dart';
import 'package:ecom_app/model/category_model.dart';
import 'package:ecom_app/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/category_tiles.dart';
import '../widgets/recommended_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final List<String> filterTabs = ['Hottest', 'Popular', 'New Combo', 'Top'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              const Gap(10),
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
              const Gap(30),
              const Text(
                'Recommended Combo',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              GridView.builder(
                itemCount: recommendedList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return RecommendedTile(item: recommendedList[index]);
                },
              ),
              const Gap(30),

              // Tab Filter Row
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filterTabs.length,
                    itemBuilder: (context, index) {
                      final isSelected = index == selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                filterTabs[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      isSelected ? Colors.black : Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 4,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? orangeColor
                                          : Colors.transparent,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    final item = categoryList[index];

                    return CategoryTile(item: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
