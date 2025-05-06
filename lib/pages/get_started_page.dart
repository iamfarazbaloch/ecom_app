import 'package:ecom_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/images.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.6,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(color: orangeColor),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(getStartedImage),
            ),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                Text(
                  'Get The Freshest Fruits Salad Combo',
                  style: TextStyle(color: boldColor, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
