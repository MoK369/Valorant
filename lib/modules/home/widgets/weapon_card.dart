import 'package:flutter/material.dart';
import 'package:valorent/core/models/weapons_model.dart';

class WeaponCard extends StatelessWidget {
  final WeaponData weapon;
  final bool ltr;

  const WeaponCard({super.key, required this.weapon, required this.ltr});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size.width * 0.9,
            height: size.height * 0.15,
            clipBehavior: Clip.none,
            decoration: const BoxDecoration(
                color: Color(0xFF081E34),
                borderRadius: BorderRadiusDirectional.all(Radius.circular(15))),
          ),
          Positioned(
            left: ltr ? 15 : null,
            right: ltr ? null : 25,
            child: Transform(
                alignment: Alignment.topCenter,
                transform: Matrix4.identity()
                  ..rotateZ(ltr ? 15.4 : 25.4)
                  ..rotateX(ltr ? 3 : 0),
                child: Image.network(
                  weapon.displayIcon ?? "",
                  scale: 1.5,
                )),
          ),
          Positioned(
            top: 60,
            left: ltr ? null : 40,
            right: ltr ? 40 : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weapon.displayName ?? "",
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 30),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  weapon.shopData?.categoryText ?? "",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
