import 'package:flutter/material.dart';

class StatesPage extends StatefulWidget {
  const StatesPage({super.key});
  static const String id = 'StatesPage';
  @override
  State<StatesPage> createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('StatesPage'),),
    );
  }
}
