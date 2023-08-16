import 'package:flutter/material.dart';

class FantasyPage extends StatefulWidget {
  const FantasyPage({super.key});
  static const String id = 'FantasyPage';
  @override
  State<FantasyPage> createState() => _FantasyPageState();
}

class _FantasyPageState extends State<FantasyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('FantasyPage'),),
    );
  }
}
