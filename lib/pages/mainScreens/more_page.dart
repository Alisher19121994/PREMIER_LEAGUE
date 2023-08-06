import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});
  static const String id = 'MorePage';
  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('MorePage'),),
    );
  }
}
