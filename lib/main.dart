import 'package:fitness_tracker/constant/color.dart';
import 'package:fitness_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive Apps",
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: const HomePage(),
    );
  }
}
