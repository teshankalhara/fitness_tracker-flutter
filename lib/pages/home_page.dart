import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //side bar
            Container(color: Colors.blueGrey[900]),
            //dashboard
            Container(color: Colors.blueGrey[900]),
            //summary
            Container(color: Colors.cyanAccent),
          ],
        ),
      ),
    );
  }
}
