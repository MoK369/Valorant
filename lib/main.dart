import 'package:flutter/material.dart';
import 'package:valorent/core/themes/app_themes/app_themes.dart';
import 'package:valorent/modules/agent_screen/agent_screen.dart';
import 'package:valorent/modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      title: 'Valorent',
      routes: {
        HomeScreen.routName: (_) => const HomeScreen(),
        AgentScreen.routName: (_) => const AgentScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
