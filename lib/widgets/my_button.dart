import 'package:ecom_app/constant/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Get Started',
          style: TextStyle(
            color: lightColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
