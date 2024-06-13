import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BudgetChart extends StatelessWidget {
  const BudgetChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.blue,
            value: 50,
            title: '50%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 30,
            title: '30%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.orange,
            value: 20,
            title: '20%',
            radius: 50,
          ),
        ],
      ),
    );
  }
}
