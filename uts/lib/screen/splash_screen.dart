import 'dart:async';

import 'package:flutter/material.dart';

import '../app_route.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'SIGD Bekasi',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Sistem Informasi Geografis Desa Bekasi',
              style: TextStyle(fontSize: 18,),
            ),
          ],
        ),
      ),
    );
  }

  void _initialize() async {
    Timer(const Duration(seconds: 3), () => AppRoute.clearTopTo(const HomeScreen()));
  }
}
