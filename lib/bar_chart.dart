import 'package:fine_bar_chart/fine_bar_chart.dart';
import 'package:flutter/material.dart';
class BarChart extends StatefulWidget {
  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  List<double> barValue = [50, 30, 90, 60, 80, 25];
  List<Color> barColors = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.purple
  ];
  List<String> bottomBarName = ["B1", "B2", "B3", "B4", "B5", "B6"];
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 60),
          child: FineBarChart(
              barWidth: 30,
              barHeight: 300,
              backgroundColors: Colors.white,
              isBottomNameDisable: false,
              isValueDisable: false,
              textStyle: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              barBackgroundColors: Colors.grey.withOpacity(0.3),
              barValue: barValue,
              barColors: barColors,
              barBottomName: bottomBarName),
        );
  }
}