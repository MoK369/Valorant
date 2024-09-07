import 'package:flutter/material.dart';
import 'package:valorent/core/models/weapons_model.dart';
import 'package:valorent/core/services/apis/weapon_api_manager.dart';
import 'package:valorent/modules/home/widgets/weapon_card.dart';

class WeaponView extends StatefulWidget {
  const WeaponView({super.key});

  @override
  State<WeaponView> createState() => _WeaponViewState();
}

class _WeaponViewState extends State<WeaponView> {
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
