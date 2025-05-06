import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  final TextEditingController controller;
  const MySearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: 'Tony',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ),
    );
  }
}
