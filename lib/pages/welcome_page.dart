import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'data',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
