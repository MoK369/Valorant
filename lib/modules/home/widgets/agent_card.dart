import 'package:flutter/material.dart';
import 'package:valorent/core/defined_fonts/defined_fonts.dart';

class AgentCard extends StatelessWidget {
  String agentImage, name;
  List<dynamic> backgroundGradientColors;

  AgentCard(
      {super.key,
      required this.agentImage,
      required this.name,
      required this.backgroundGradientColors});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        alignment: Alignment.bottomLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size.width * 0.6,
            height: size.height * 0.4,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(103),
                    topRight: Radius.circular(17),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(59)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0x0 +
                          int.parse(backgroundGradientColors[0], radix: 16)),
                      Color(0x0 +
                          int.parse(backgroundGradientColors[1], radix: 16)),
                      Color(0x0 +
                          int.parse(backgroundGradientColors[2], radix: 16)),
                      Color(0x0 +
                          int.parse(backgroundGradientColors[3], radix: 16))
                    ])),
          ),
          Positioned(
            top: -40,
            left: 60,
            width: 143,
            height: 308,
            child: Transform.scale(
              scale: 3.3,
              child: Image.network(agentImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: Text(
              textAlign: TextAlign.start,
              name,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: DefinedFonts.VALORANT),
            ),
          )
        ],
      ),
    );
  }
}
