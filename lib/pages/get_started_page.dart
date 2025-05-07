import 'package:ecom_app/constant/colors.dart';
import 'package:ecom_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/images.dart';
import 'authentication_page.dart';

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get The Freshest Fruits Salad Combo',
                    style: TextStyle(
                      color: boldColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    'We deliver the best and freshest fruit salad\nin town. Order for a combo today!!!',
                    style: TextStyle(
                      color: boldColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const Spacer(),
                  MyButton(
                    text: "Let's Continue",
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthenticationPage(),
                        ),
                      );
                    },
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
