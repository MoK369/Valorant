import 'package:flutter/material.dart';
import 'package:valorent/core/defined_fonts/defined_fonts.dart';
import 'package:valorent/core/models/agents_model.dart';
import 'package:valorent/modules/agent_screen/widgets/ability_box.dart';

class AgentScreen extends StatelessWidget {
  static const String routName = "AgentScreen";

  const AgentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AgentData? agent = ModalRoute.settingsOf(context)?.arguments as AgentData;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: size.height * 0.1,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text(
              agent.displayName ?? "",
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
            actions: [
              Image.asset(
                "assets/icons/display_icon.png",
                scale: 2,
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Image.network(
                      agent.background ?? "",
                      scale: 1.3,
                      height: size.height * 0.4,
                    ),
                    Positioned(
                        top: -60,
                        child: Hero(
                          tag: agent.fullPortraitV2!,
                          child: Image.network(
                            agent.fullPortraitV2 ?? "",
                            scale: 4.3,
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  """
Description

${agent.description ?? ""}

Abilities
                  """,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: DefinedFonts.VALORANT),
                ),
              ),
              const Spacer(),
              Expanded(
                  flex: 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: agent.abilities.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: AbilityBox(
                            imagePath:
                                agent.abilities[index].displayIcon ?? ""),
                      );
                    },
                  )),
              const SizedBox(
                height: 20,
              )
            ],
          )),
    );
  }
}
