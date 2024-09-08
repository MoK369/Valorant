import 'package:flutter/material.dart';
import 'package:valorent/core/models/maps_model.dart';
import 'package:valorent/core/network_images/network_images.dart';

class MapCard extends StatelessWidget {
  final MapData map;

  const MapCard({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
            width: size.width * 0.99,
            height: size.height * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CustomCachedNetImages(
                imageUrl: map.splash ?? "",
                fit: BoxFit.fill,
              ),
            )),
        Container(
          width: size.width * 0.99,
          height: size.height * 0.25,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  stops: const [
                    0.4,
                    1
                  ],
                  colors: [
                    Colors.redAccent.withOpacity(0.4),
                    Colors.transparent,
                  ])),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              map.displayName ?? "",
              style: theme.textTheme.titleSmall!.copyWith(fontSize: 30),
            ),
          ),
        ),
        Positioned(
            right: 10,
            child: CustomCachedNetImages(
              imageUrl: map.displayIcon ?? "",
              scale: 4.4,
            )),
      ],
    );
  }
}
