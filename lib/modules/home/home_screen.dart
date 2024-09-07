import 'package:flutter/material.dart';
import 'package:valorent/modules/home/views/agents_view.dart';
import 'package:valorent/modules/home/views/maps_view.dart';
import 'package:valorent/modules/home/views/weapon_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Image.asset(
              "assets/icons/logo_icon.png",
              scale: 4,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/icons/branding_logo.png",
              scale: 4,
            ),
          ],
        ),
        toolbarHeight: size.height * 0.25,
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            height: 50,
            child: Text(
              "Agents",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Tab(
            child: Text(
              "Maps",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Tab(
            child: Text(
              "Weapons",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ]),
      ),
      body: TabBarView(
          controller: tabController,
          children: const [AgentsView(), MapsView(), WeaponView()]),
    );
  }
}
