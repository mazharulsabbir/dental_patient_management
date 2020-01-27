import 'package:dental_patient_management/model/chart_data.dart';
import 'package:dental_patient_management/widgets/charts.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  String _selectedTypeForStat = 'Weekly'.toString();
  String _selectedTypeForTreatment = 'Daily'.toString();
  String _selectedTypeForIncome = 'Weekly'.toString();

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
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Treatment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),
                          DropdownButton<String>(
                            onChanged: (day) {
                              setState(() {
                                _selectedTypeForTreatment = day.toString();
                                print(_selectedTypeForTreatment);
                              });
                            },
                            hint: Text(_selectedTypeForTreatment.toString()),
                            items: <String>[
                              'Daily',
                              'Weekly',
                              'Monthly',
                              'Yearly'
                            ].map((String day) {
                              return new DropdownMenuItem<String>(
                                value: day.toString(),
                                child: new Text(day.toString()),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MyChart().pieChart(dataMap())
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // child: MyChart().lineChart(_generateRandomData(7)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Earnings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),
                          DropdownButton<String>(
                            onChanged: (day) {
                              setState(() {
                                _selectedTypeForStat = day.toString();
                                print(_selectedTypeForStat);
                              });
                            },
                            hint: Text(_selectedTypeForStat.toString()),
                            items: <String>['Weekly', 'Monthly', 'Yearly']
                                .map((String day) {
                              return new DropdownMenuItem<String>(
                                value: day.toString(),
                                child: new Text(day.toString()),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MyChart().splineChart(chartData())
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // child: MyChart().lineChart(_generateRandomData(7)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Profit',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),
                          DropdownButton<String>(
                            onChanged: (day) {
                              setState(() {
                                _selectedTypeForIncome = day.toString();
                                print(_selectedTypeForIncome);
                              });
                            },
                            hint: Text(_selectedTypeForIncome.toString()),
                            items: <String>['Weekly', 'Monthly', 'Yearly']
                                .map((String day) {
                              return new DropdownMenuItem<String>(
                                value: day.toString(),
                                child: new Text(day.toString()),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      MyChart().lineChart(lineChartData())
                    ],
                  ),
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
      ChartData(
        'Sat',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Sun',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Mon',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Tue',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Wed',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Thu',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
      ChartData(
        'Fri',
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
        random.nextInt(15000).toDouble(),
      ),
    ];

    return chartData;
  }

  List<double> lineChartData() {
    return [
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1,
      random.nextInt(15).toDouble() + 1
    ];
  }

  Map<String, double> dataMap() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Scaling", () => random.nextInt(5).toDouble() + 1);
    dataMap.putIfAbsent("Filling", () => random.nextInt(5).toDouble() + 1);
    dataMap.putIfAbsent("R.C.T", () => random.nextInt(5).toDouble() + 1);
    dataMap.putIfAbsent("Cap", () => random.nextInt(5).toDouble() + 1);
    dataMap.putIfAbsent("Extraction", () => random.nextInt(5).toDouble() + 1);
    dataMap.putIfAbsent("Pulpectomy", () => random.nextInt(5).toDouble() + 1);

    return dataMap;
  }
}
