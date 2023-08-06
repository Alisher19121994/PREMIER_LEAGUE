import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainScreens/fantasy_page.dart';
import 'mainScreens/latest_page.dart';
import 'mainScreens/more_page.dart';
import 'mainScreens/premier_league.dart';
import 'mainScreens/states_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String id = 'MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      const LatestPage(),
      const PremierLeague(),
      const FantasyPage(),
      const StatesPage(),
      const MorePage()
    ];
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13.0,
        selectedItemColor: const Color(0xff38003c),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        elevation: 10,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.featured_play_list_outlined),label: 'Latest'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_basketball_sharp),label: 'PL'),
          BottomNavigationBarItem(icon: Icon(Icons.co_present),label: 'Fantasy'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'More'),
        ],
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
