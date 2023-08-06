import 'package:flutter/material.dart';

class PremierLeague extends StatefulWidget {
  const PremierLeague({super.key});
  static const String id = 'PremierLeague';

  @override
  State<PremierLeague> createState() => _PremierLeagueState();
}

class _PremierLeagueState extends State<PremierLeague> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('PremierLeague'),),
    );
  }
}
