import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: isDesktop ? null : const SizedBox(width: 250, child: SideMenu()),
      endDrawer:
          isDesktop ? null : const SizedBox(width: 250, child: SummaryMenu()),
      body: SafeArea(
        child: Row(
          children: [
            //side bar
            if (isDesktop)
              (Expanded(flex: 2, child: SizedBox(child: SideMenu()))),
            //dashboard
            Expanded(flex: 7, child: SizedBox(child: Dashboard())),
            //summary
            if (isDesktop)
              (Expanded(flex: 3, child: SizedBox(child: SummaryMenu()))),
          ],
        ),
      ),
    );
  }
}
