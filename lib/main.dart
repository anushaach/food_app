import 'package:flutter/material.dart';
import 'package:food_app/screens/card.dart';
import 'package:food_app/screens/date_and_time_picker.dart';
import 'package:food_app/screens/firstpage.dart';
import 'package:food_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}
