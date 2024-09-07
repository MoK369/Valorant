import 'package:flutter/material.dart';
import 'package:valorent/core/models/maps_model.dart';

class MapCard extends StatelessWidget {
  final MapData map;

  const MapCard({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Container(
      width: size.width * 0.7,
      height: size.height * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.red.withOpacity(
                    0.5), // Replace with your desired color and opacity
                BlendMode
                    .colorDodge, // Choose appropriate blend mode for your use case
              ),
              image: NetworkImage(map.splash ?? ""),
              fit: BoxFit.cover)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              map.displayName ?? "",
              style: theme.textTheme.titleSmall!.copyWith(fontSize: 30),
            ),
          ),
          const Spacer(),
          Image.network(map.displayIcon ?? ""),
          // CachedNetworkImage(
          //   imageUrl: map.displayIcon ?? "",
          //   placeholder: (context, url) =>
          //       const Center(child: CircularProgressIndicator()),
          //   errorWidget: (context, url, error) =>
          //       const Center(child: Icon(Icons.error)),
          // ),
        ],
      ),
    );
  }
}
