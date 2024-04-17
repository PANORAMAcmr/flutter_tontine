import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartWidget extends StatefulWidget {
  @override
  _CircularChartWidgetState createState() => _CircularChartWidgetState();
}

class _CircularChartWidgetState extends State<CircularChartWidget> {
  late List<ChartData> chartData;

  @override
  void initState() {
    super.initState();

    chartData = [
      ChartData('Jan', 10, Colors.red),
      ChartData('Feb', 15, Colors.orange),
      ChartData('Mar', 20, Colors.yellow),
      ChartData('Apr', 25, Colors.green),
      ChartData('May', 30, Colors.blue),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: SfCircularChart(
        legend: Legend(
          isVisible: true,
          overflowMode: LegendItemOverflowMode.wrap,
          position: LegendPosition.bottom,
          borderColor: Colors.black,
          borderWidth: 2,
          // margin: EdgeInsets.all(5),
          // width: 70,
          // height: 20,
        ),
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            innerRadius: '50%',
            enableTooltip: true,
            dataLabelMapper: (ChartData data, _) => '${data.x}: ${data.y}',
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              connectorLineSettings: ConnectorLineSettings(
                type: ConnectorType.line,
                width: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChartData {
  final String x;
  final double y;
  final Color color;

  ChartData(this.x, this.y, this.color);
}