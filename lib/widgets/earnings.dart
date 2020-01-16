import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            print('Unit Pressed');
          },
        ),
      ),
      body: Center(child: pieChart()),
    );
  }

  Widget pieChart() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Scaling", () => 5);
    dataMap.putIfAbsent("Filling", () => 3);
    dataMap.putIfAbsent("R.C.T", () => 2);
    dataMap.putIfAbsent("Cap", () => 2);
    dataMap.putIfAbsent("Extraction", () => 2);
    dataMap.putIfAbsent("Palpectomy", () => 2);

    return PieChart(
      dataMap: dataMap,
      legendPosition: LegendPosition.right,
      chartType: ChartType.disc,
      showLegends: true,
    );
  }
}
