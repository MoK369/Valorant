import 'package:flutter/material.dart';
import 'package:valorent/core/defined_fonts/defined_fonts.dart';

class AgentCard extends StatelessWidget {
  final String agentImage, name;
  final List<String> backgroundGradientColors;

  const AgentCard(
      {super.key,
      required this.agentImage,
      required this.name,
      required this.backgroundGradientColors});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(103),
                    topRight: Radius.circular(17),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(59)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF000000 +
                          int.parse(
                              backgroundGradientColors[0]
                                  .replaceRange(6, 8, ""),
                              radix: 16)),
                      Color(0xFF000000 +
                          int.parse(
                              backgroundGradientColors[3]
                                  .replaceRange(6, 8, ""),
                              radix: 16))
                    ])),
          ),
          Positioned(
            top: -40,
            left: 60,
            width: 143,
            height: 308,
            child: Transform.scale(
              scale: 3.3,
              child: Hero(tag: agentImage, child: Image.network(agentImage)),
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
