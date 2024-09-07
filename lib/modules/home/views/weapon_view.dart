import 'package:flutter/material.dart';
import 'package:valorent/core/models/weapons_model.dart';
import 'package:valorent/core/services/apis/weapon_api_manager.dart';
import 'package:valorent/modules/home/widgets/weapon_card.dart';

class WeaponView extends StatelessWidget {
  const WeaponView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
            child: FutureBuilder(
          future: WeaponApiManager.getMaps(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              debugPrint("${snapshot.error}");
              return Center(
                child: Text(
                  "Something went wrong",
                  style: theme.textTheme.titleSmall,
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<WeaponData> weapons = snapshot.data?.data ?? [];
              return ListView.builder(
                itemCount: weapons.length,
                itemBuilder: (context, index) {
                  return WeaponCard(
                    weapon: weapons[index],
                    ltr: index % 2 != 0,
                  );
                },
              );
            }
          },
        ))
      ],
    );
  }
}
