import 'package:flutter/material.dart';
import 'package:valorent/core/network_images/network_images.dart';

class AbilityBox extends StatelessWidget {
  final String imagePath;

  const AbilityBox({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.23,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: CustomCachedNetImages(
        imageUrl: imagePath,
      ),
    );
  }
}
