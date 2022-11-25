import 'package:connex/Apis/DashboardApis.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../Models/pie_chart_data.dart';
import '../../Models/pie_data_map.dart';

class KolEngagemetTracking extends StatefulWidget {
  const KolEngagemetTracking({super.key});

  @override
  State<KolEngagemetTracking> createState() => _KolEngagemetTrackingState();
}

class _KolEngagemetTrackingState extends State<KolEngagemetTracking> {
  late List<ExpenseData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 300,
  //     child:
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 1.10,
        // height: 200,
        // width: 300,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Overall KOL Engagment Tracking",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.black26,
              endIndent: 10,
              indent: 10,
              thickness: 1.0,
            ),
            Container(
              // height: 300,
              child: FutureBuilder(
                  future: DashBoardApi.getRectangleChartData(context),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    List<RectangleChartDataMap>? __rectangleChartDataMap =
                        snapshot.data;
                    print("__rectangleChartDataMap ${__rectangleChartDataMap}");
                    _chartData = getChartData(__rectangleChartDataMap);
                    return SfCartesianChart(
                      legend: Legend(isVisible: true),
                      tooltipBehavior: _tooltipBehavior,
                      series: <ChartSeries>[
                        StackedBarSeries<ExpenseData, String>(
                          dataSource: _chartData,
                          xValueMapper: (ExpenseData exp, _) => exp.name,
                          yValueMapper: (ExpenseData exp, _) => exp.detractor,
                          name: 'Father',
                          // markerSettings: MarkerSettings(
                          //   isVisible: false,
                          // ),
                        ),
                        StackedBarSeries<ExpenseData, String>(
                          dataSource: _chartData,
                          xValueMapper: (ExpenseData exp, _) => exp.name,
                          yValueMapper: (ExpenseData exp, _) => exp.neutral,
                          name: 'Mother',
                          // markerSettings: MarkerSettings(
                          //   isVisible: true,
                          // ),
                        ),
                        StackedBarSeries<ExpenseData, String>(
                          dataSource: _chartData,
                          xValueMapper: (ExpenseData exp, _) => exp.name,
                          yValueMapper: (ExpenseData exp, _) => exp.passive,
                          name: 'Son',
                          // markerSettings: MarkerSettings(
                          //   isVisible: true,
                          // ),
                        ),
                        StackedBarSeries<ExpenseData, String>(
                          dataSource: _chartData,
                          xValueMapper: (ExpenseData exp, _) => exp.name,
                          yValueMapper: (ExpenseData exp, _) => exp.proactive,
                          name: 'Daughter',
                          // markerSettings: MarkerSettings(
                          //   isVisible: true,
                          // ),
                        ),
                      ],
                      primaryXAxis: CategoryAxis(),
                    );
                  }),
            ),
          ],
        ));
  }

  List<ExpenseData> getChartData(
      List<RectangleChartDataMap>? _rectangleChartDataMap) {
    print("chartData $_rectangleChartDataMap");
    final List<ExpenseData> chartData = [];

    for (int i = 0; i < _rectangleChartDataMap!.length; i++) {
      chartData.add(ExpenseData(
        _rectangleChartDataMap[i].name!,
        _rectangleChartDataMap[i].unscoredList![0].expr0!,
        _rectangleChartDataMap[i].detractorList![0].expr0!,
        _rectangleChartDataMap[i].neutralList![0].expr0!,
        _rectangleChartDataMap[i].proactiveList![0].expr0!,
        _rectangleChartDataMap[i].passiveList![0].expr0!,
      ));
    }
    _rectangleChartDataMap!.forEach((element) {
      chartData.add(ExpenseData(
        element.name!,
        element.unscoredList![0].expr0!,
        element.detractorList![0].expr0!,
        element.neutralList![0].expr0!,
        element.proactiveList![0].expr0!,
        element.passiveList![0].expr0!,
      ));
      print("chartData2 $chartData");
    });

    return chartData;
  }
}

class ExpenseData {
  ExpenseData(this.name, this.unscored, this.detractor, this.neutral,
      this.proactive, this.passive);
  final String name;
  final num unscored;
  final num detractor;
  final num neutral;
  final num passive;
  final num proactive;
}
