import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary_menu.dart';
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
            const Expanded(flex: 2, child: SizedBox(child: SideMenu())),
            //dashboard
            const Expanded(flex: 7, child: SizedBox(child: Dashboard())),
            //summary
            const Expanded(flex: 3, child: SizedBox(child: SummaryMenu())),
          ],
        ),
      ),
    );
  }
}
