import 'package:agri/view/screens/homepage.dart';
import 'package:agri/view/screens/splashscreen.dart';
import 'package:agri/view/screens/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screens/onboarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Store(),
      debugShowCheckedModeBanner: false,
    );
  }
}