import 'package:ecom_app/pages/home_page.dart';
import 'package:ecom_app/widgets/my_button.dart';
import 'package:ecom_app/widgets/my_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import '../constant/images.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.6,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: orangeColor),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Image.asset(getStarted1Image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your name?',
                    style: TextStyle(
                      color: boldColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  const Gap(40),
                  MySearchField(controller: controller, text: 'Tony'),
                  const Gap(20),
                  MyButton(
                    text: "Start Ordering",
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
