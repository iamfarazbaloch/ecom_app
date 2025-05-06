import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  final TextEditingController controller;
  final IconData? icon;
  final String? text;
  const MySearchField({
    super.key,
    required this.controller,
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
          prefixIcon: Icon(icon, color: Colors.grey),
        ),
      ),
    );
  }
}
