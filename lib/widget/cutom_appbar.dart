import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String titleText;
  const CustomAppbar({required this.titleText, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    );
  }
}
