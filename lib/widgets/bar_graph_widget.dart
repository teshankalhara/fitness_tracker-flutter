import 'package:fitness_tracker/constant/color.dart';
import 'package:fitness_tracker/data/bar_graph_data.dart';
import 'package:fitness_tracker/models/graph_model.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/custum_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color: barGraphData.data[index].color,
                    ),
                    borderData: FlBorderData(border: const Border()),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGraphData.label[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 20,
                // ignore: deprecated_member_use
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
