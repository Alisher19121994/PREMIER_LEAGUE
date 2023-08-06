import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/app_images.dart';
import '../main_screen_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String id = 'SplashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const MainPage()),
                (route) => false));

    return Scaffold(
      backgroundColor: const Color(0xff00ff85),
      body: Center(
        child: Image.asset(
          AppImages.logo,
        ),
      ),
    );
  }
}
