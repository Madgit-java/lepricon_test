import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'presentation/pages/home_page.dart';

void main() {
  runApp( GetMaterialApp(theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  HomePage();
  }
}
