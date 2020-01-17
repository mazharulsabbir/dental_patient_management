import 'package:dental_patient_management/model/chart_data.dart';
import 'package:dental_patient_management/widgets/charts.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sheba Dental Care'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            print('Unit Pressed');
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Card(
                child: MyChart().pieChart(dataMap()),
              ),
              SizedBox(
                height: 8.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // child: MyChart().lineChart(_generateRandomData(7)),
                  child: MyChart().splineChart(chartData())  ,
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  var random = new math.Random();

  List<ChartData> chartData() {
    var chartData = [
      ChartData('Sat', 10000, 7000, 3000),
      ChartData('Sun', 11000, 7000, 3000),
      ChartData('Mon', 1200, 7000, 5000),
      ChartData('Tue', 10000, 7000, 3000),
      ChartData('Wed', 15000, 7000, 8000),
      ChartData('Thu', 7000, 7000, 7000),
      ChartData('Fri', 5000, 5000, 0),
    ];
    return chartData;
  }

  Map<String, double> dataMap() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Scaling", () => 5);
    dataMap.putIfAbsent("Filling", () => 3);
    dataMap.putIfAbsent("R.C.T", () => 2);
    dataMap.putIfAbsent("Cap", () => 2);
    dataMap.putIfAbsent("Extraction", () => 4);
    dataMap.putIfAbsent("Pulpectomy", () => 2);

    return dataMap;
  }
}
