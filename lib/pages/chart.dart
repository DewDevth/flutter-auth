import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF6262),
        title: Center(child: Text('รายงาน')),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PieChartDemo(),
            ),
            Expanded(
              child: LineChartDemo(),
            ),
          ],
        ),
      ),
    );
  }
}

class LineChartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: 300, // Adjust the width as needed
            height: 200, // Adjust the height as needed
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 1), // Data point at (x=0, y=1)
                      FlSpot(1, 3), // Data point at (x=1, y=3)
                      FlSpot(2, 2), // Data point at (x=2, y=2)
                      FlSpot(3, 5), // Data point at (x=3, y=5)
                      FlSpot(4, 4), // Data point at (x=4, y=4)
                    ],
                    isCurved: true,
                    dotData: FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PieChartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: 200, // Adjust the width as needed
            height: 200, // Adjust the height as needed
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 40, // Set the value for this section
                    color: Colors.blue, // Set the color for this section
                    title: '40%', // Optional: Set a title for this section
                  ),
                  PieChartSectionData(
                    value: 30, // Set the value for this section
                    color: Colors.green, // Set the color for this section
                    title: '30%', // Optional: Set a title for this section
                  ),
                  PieChartSectionData(
                    value: 20, // Set the value for this section
                    color: Colors.orange, // Set the color for this section
                    title: '20%', // Optional: Set a title for this section
                  ),
                  PieChartSectionData(
                    value: 10, // Set the value for this section
                    color: Colors.red, // Set the color for this section
                    title: '10%', // Optional: Set a title for this section
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
