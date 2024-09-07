import 'package:flutter/material.dart';
import 'package:valorent/core/models/maps_model.dart';
import 'package:valorent/core/services/apis/map_api_manager.dart';
import 'package:valorent/modules/home/widgets/map_card.dart';

class MapsView extends StatefulWidget {
  const MapsView({super.key});

  @override
  State<MapsView> createState() => _MapsViewState();
}

class _MapsViewState extends State<MapsView> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: FutureBuilder(
            future: MapApiManager.getMaps(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Something went wrong",
                      style: theme.textTheme.titleSmall,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text(
                          "Try Again",
                          style: theme.textTheme.titleSmall,
                        ))
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                List<MapData> maps = snapshot.data?.data ?? [];
                return ListView.builder(
                  itemCount: maps.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: MapCard(map: maps[index]),
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
