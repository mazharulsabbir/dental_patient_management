import 'package:dental_patient_management/model/chart_data.dart';
import 'package:dental_patient_management/model/sales_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyChart {
  Widget pieChart(Map<String, double> dataMap) {
    return PieChart(
      dataMap: dataMap,
      chartType: ChartType.disc,
      showLegends: true,
    );
  }

  Widget lineChart(var data) {
    return Sparkline(
      data: data,
      lineWidth: 8.0,
      lineGradient: new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.red[800], Colors.red[200]],
      ),
      fillMode: FillMode.below,
      fillGradient: new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.red[800], Colors.red[200]],
      ),
      pointsMode: PointsMode.last,
      pointColor: Colors.blue,
    );
  }

  Widget splineChart(List<ChartData> chartData) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: <CartesianSeries>[
        ColumnSeries<ChartData, String>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.name,
            yValueMapper: (ChartData data, _) => data.total),
        ColumnSeries<ChartData, String>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.name,
            yValueMapper: (ChartData data, _) => data.paid),
        ColumnSeries<ChartData, String>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.name,
            yValueMapper: (ChartData data, _) => data.due)
      ],
    );
  }
}
