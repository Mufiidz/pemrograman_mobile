import 'package:flutter/material.dart';
import 'package:tugas6/app_route.dart';
import 'package:tugas6/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGD',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRoute.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
