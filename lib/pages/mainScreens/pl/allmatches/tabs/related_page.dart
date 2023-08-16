import 'package:flutter/material.dart';

class Related extends StatefulWidget {
  const Related({super.key});
  static const String id = 'Related';
  @override
  State<Related> createState() => _RelatedState();
}

class _RelatedState extends State<Related> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Related'),),
    );
  }
}
