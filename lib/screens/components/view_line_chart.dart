import 'package:admin_pannel/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ViewLineChart extends StatefulWidget {
  const ViewLineChart({Key? key}) : super(key: key);

  @override
  _ViewLineChartState createState() => _ViewLineChartState();
}

class _ViewLineChartState extends State<ViewLineChart> {
  List<Color> gradientColors = [
    primaryColor,
    secondaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        appPadding,
        appPadding * 1.5,
        appPadding,
        appPadding,
      ),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTextStyles: defaultGetTitleTextStyle,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 1:
                      return 'Sun';
                    case 4:
                      return 'Mon';
                    case 7:
                      return 'Tue';
                    case 10:
                      return 'Wed';
                    case 13:
                      return 'Thr';
                    case 16:
                      return 'Fri';
                    case 19:
                      return 'Sat';
                  }
                  return '';
                }),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 20,
          maxY: 0,
          minY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(1, 3),
                FlSpot(10, 1),
                FlSpot(9, 4),
                FlSpot(12, 3),
                FlSpot(10, 5),
                FlSpot(16, 3),
                FlSpot(20, 4),
              ],
              isCurved: true,
              colors: [primaryColor],
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors.map((e) => e.withOpacity(0.3)).toList(),
                gradientFrom: Offset(0, 0),
                gradientTo: Offset(0, 0.95),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
