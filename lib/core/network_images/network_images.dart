import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetImages extends StatelessWidget {
  final String imageUrl;
  final double scale;
  final double? height;
  final BoxFit? fit;

  const CustomCachedNetImages(
      {super.key,
      required this.imageUrl,
      this.scale = 1,
      this.height,
      this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      scale: scale,
      height: height,
      fit: fit,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Center(
          child: Icon(
        Icons.error,
      )),
    );
  }
}
