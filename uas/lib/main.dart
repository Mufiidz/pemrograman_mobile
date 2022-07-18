import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'screen/home/home_screen.dart';
import 'screen/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Dosen',
      navigatorKey: AppRoute.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
      ],
      home: const HomeScreen(),
    );
  }
}
