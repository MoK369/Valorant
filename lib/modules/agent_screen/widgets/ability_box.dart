import 'package:flutter/material.dart';

class AbilityBox extends StatelessWidget {
  String imagePath;

  AbilityBox({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: Image.network(
        imagePath,
        scale: 1.2,
      ),
    );
  }
}
