import 'dart:async';

import 'package:flutter/material.dart';
import 'package:CBE_CLONE/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
            tag: 'Logo',
            child: Image.asset('assets/Dj6xJ2dX0AADlPv-removebg-preview.png')),
      ),
    );
  }
}
