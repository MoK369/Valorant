import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:valorent/core/models/agents_model.dart';
import 'package:valorent/core/services/apis/agent_api_manager.dart';
import 'package:valorent/modules/agent_screen/agent_screen.dart';
import 'package:valorent/modules/home/widgets/agent_card.dart';

class AgentsView extends StatelessWidget {
  const AgentsView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: FutureBuilder(
            future: AgentApiManager.getAgents(),
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
                List<AgentData> agents = snapshot.data?.data ?? [];
                return CarouselSlider.builder(
                    itemCount: agents.length,
                    itemBuilder: (context, index, realIndex) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.pushNamed(context, AgentScreen.routName,
                              arguments: agents[index]);
                        },
                        child: AgentCard(
                            agentImage: agents[index].fullPortraitV2 ?? "",
                            name: agents[index].displayName ?? "",
                            backgroundGradientColors:
                                agents[index].backgroundGradientColors ?? []),
                      );
                    },
                    options: CarouselOptions(
                        initialPage: 0,
                        height: size.height * 0.9,
                        viewportFraction: 0.65));
              }
            },
          ),
        )
      ],
    );
  }
}
