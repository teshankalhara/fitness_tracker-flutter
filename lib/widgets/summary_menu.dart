import 'package:fitness_tracker/constant/color.dart';
import 'package:fitness_tracker/widgets/pie_chart_widget.dart';
import 'package:fitness_tracker/widgets/shedule_widget.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class SummaryMenu extends StatelessWidget {
  const SummaryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(color: cardBackgroundColor),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Chart(),
              Text(
                'Summary',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              SummaryDetails(),
              SizedBox(height: 40),
              ScheduledWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
