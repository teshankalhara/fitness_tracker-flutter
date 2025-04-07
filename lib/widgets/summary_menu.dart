import 'package:flutter/material.dart';

class SummaryMenu extends StatefulWidget {
  const SummaryMenu({super.key});

  @override
  State<SummaryMenu> createState() => _SummaryMenuState();
}

class _SummaryMenuState extends State<SummaryMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Summary Menu",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
