import 'package:flutter/material.dart';
import 'package:p_l/pages/mainScreens/fantasy_page.dart';
import 'package:p_l/pages/mainScreens/latest_page.dart';
import 'package:p_l/pages/mainScreens/more_page.dart';
import 'package:p_l/pages/mainScreens/premier_league.dart';
import 'package:p_l/pages/mainScreens/states_page.dart';
import 'package:p_l/pages/main_screen_page.dart';
import 'package:p_l/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      routes: {
        MainPage.id: (context) => const MainPage(),
        FantasyPage.id: (context) => const FantasyPage(),
        LatestPage.id: (context) => const LatestPage(),
        MorePage.id: (context) => const MorePage(),
        PremierLeague.id: (context) => const PremierLeague(),
        StatesPage.id: (context) => const StatesPage(),
      },
    );
  }
}
