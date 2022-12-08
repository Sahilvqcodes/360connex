import 'package:connex/Apis/Dashboard/apis/dashboardApis.dart';
import 'package:connex/controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../Apis/Dashboard/models/pie_data_map.dart';

// class KolEngagemetTracking extends StatefulWidget {
//   const KolEngagemetTracking({super.key});

//   @override
//   State<KolEngagemetTracking> createState() => _KolEngagemetTrackingState();
// }

class KolEngagemetTracking extends GetView<StoreController> {
  // late List<ExpenseData>? _chartData;
  late TooltipBehavior _tooltipBehavior;

  // @override
  // void initState() {
  //   _tooltipBehavior = TooltipBehavior(enable: true);
  //   super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 300,
  //     child:
  //   );
  // }
  var Data = 0.obs;
  @override
  Widget build(BuildContext context) {
    _tooltipBehavior = TooltipBehavior(enable: true);
    return Obx(
      () => Container(
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
                height: 500,
                child: FutureBuilder(
                    future: getData(context, controller.brandsFocus,
                        controller.myValue, controller.BrandsName),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      List<ExpenseData>? _chartData = snapshot.data;
                      if (snapshot.data == null || !snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return SfCartesianChart(
                        legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap,
                          position: LegendPosition.bottom,
                        ),
                        tooltipBehavior: _tooltipBehavior,
                        series: <ChartSeries>[
                          StackedBarSeries<ExpenseData, String>(
                            dataSource: _chartData!,
                            xValueMapper: (ExpenseData exp, _) => exp.name,
                            yValueMapper: (ExpenseData exp, _) => exp.unscored,
                            name: "Unscored",
                            // pointColorMapper: (ExpenseData data, _) =>
                            //     Color(0xffDFDFDF),
                            color: Color(0xffDFDFDF),
                            legendIconType: LegendIconType.rectangle,
                            // markerSettings: MarkerSettings(
                            //   isVisible: false,
                            // ),
                          ),
                          StackedBarSeries<ExpenseData, String>(
                            dataSource: _chartData!,
                            xValueMapper: (ExpenseData exp, _) => exp.name,
                            yValueMapper: (ExpenseData exp, _) => exp.detractor,
                            name: "Detractor",
                            // pointColorMapper: (ExpenseData data, _) =>
                            //     Color(0xffDF3E46),
                            color: Color(0xffDF3E46),
                            legendIconType: LegendIconType.rectangle,
                            // markerSettings: MarkerSettings(
                            //   isVisible: false,
                            // ),
                          ),
                          StackedBarSeries<ExpenseData, String>(
                            dataSource: _chartData,
                            xValueMapper: (ExpenseData exp, _) => exp.name,
                            yValueMapper: (ExpenseData exp, _) => exp.neutral,
                            name: "Neutral",
                            // pointColorMapper: (ExpenseData data, _) =>
                            //     Color(0xffF1DF4B),
                            color: Color(0xffF1DF4B),
                            legendIconType: LegendIconType.rectangle,
                            // markerSettings: MarkerSettings(
                            //   isVisible: false,
                            // ),
                          ),
                          StackedBarSeries<ExpenseData, String>(
                            dataSource: _chartData,
                            xValueMapper: (ExpenseData exp, _) => exp.name,
                            yValueMapper: (ExpenseData exp, _) => exp.passive,
                            name: "Passive Supporter",
                            // pointColorMapper: (ExpenseData data, _) =>
                            //     Color(0xff356BDF)
                            color: Color(0xff356BDF),
                            legendIconType: LegendIconType.rectangle,
                            // markerSettings: MarkerSettings(
                            //   isVisible: false,
                            // ),
                          ),
                          StackedBarSeries<ExpenseData, String>(
                            dataSource: _chartData,
                            xValueMapper: (ExpenseData exp, _) => exp.name,
                            yValueMapper: (ExpenseData exp, _) => exp.proactive,
                            name: "Proactive Advocate",
                            // pointColorMapper: (ExpenseData data, _) =>
                            //     Color(0xff008000)
                            color: Color(0xff008000),

                            legendIconType: LegendIconType.rectangle,
                            // markerSettings: MarkerSettings(
                            //   isVisible: false,
                            // ),
                          ),

                          // StackedBarSeries<ExpenseData, String>(
                          //   dataSource: _chartData,
                          //   xValueMapper: (ExpenseData exp, _) => exp.name,
                          //   yValueMapper: (ExpenseData exp, _) => exp.detractor,
                          //   name: 'Father',
                          //   // markerSettings: MarkerSettings(
                          //   //   isVisible: false,
                          //   // ),
                          // ),
                          // StackedBarSeries<ExpenseData, String>(
                          //   dataSource: _chartData,
                          //   xValueMapper: (ExpenseData exp, _) => exp.name,
                          //   yValueMapper: (ExpenseData exp, _) => exp.neutral,
                          //   name: 'Mother',
                          //   // markerSettings: MarkerSettings(
                          //   //   isVisible: true,
                          //   // ),
                          // ),
                          // StackedBarSeries<ExpenseData, String>(
                          //   dataSource: _chartData,
                          //   xValueMapper: (ExpenseData exp, _) => exp.name,
                          //   yValueMapper: (ExpenseData exp, _) => exp.passive,
                          //   name: 'Son',
                          //   // markerSettings: MarkerSettings(
                          //   //   isVisible: true,
                          //   // ),
                          // ),
                          // StackedBarSeries<ExpenseData, String>(
                          //   dataSource: _chartData,
                          //   xValueMapper: (ExpenseData exp, _) => exp.name,
                          //   yValueMapper: (ExpenseData exp, _) => exp.proactive,
                          //   name: 'Daughter',
                          //   // markerSettings: MarkerSettings(
                          //   //   isVisible: true,
                          //   // ),
                          // ),
                        ],
                        primaryXAxis: CategoryAxis(),
                      );
                    }),
              ),
            ],
          )),
    );
  }

  getData(BuildContext context, RxList brandsFocus, RxBool myValue,
      RxList<String> brandsName) async {
    List<RectangleChartDataMap>? __rectangleChartDataMap =
        await DashBoardApi.getRectangleChartData(
            context, brandsFocus, myValue, brandsName);
    List<ExpenseData> _chartData = await getChartData(__rectangleChartDataMap);
    // print("_chartData $_chartData");
    return _chartData;
  }

  List<ExpenseData> getChartData(
      List<RectangleChartDataMap>? _rectangleChartDataMap) {
    // print("unscoredList ${_rectangleChartDataMap![0].unscoredList![0].expr0}");
    final List<ExpenseData> chartData = [];
    // print("length ${_rectangleChartDataMap!.length}");
    for (int i = 0; i < _rectangleChartDataMap!.length; i++) {
      // print("index $i ${_rectangleChartDataMap[i].unscoredList}");

      chartData.add(ExpenseData(
        _rectangleChartDataMap[i].name!,
        _rectangleChartDataMap[i].unscoredList!.length != 0
            ? _rectangleChartDataMap[i].unscoredList![0].expr0!
            : 0,
        _rectangleChartDataMap[i].detractorList!.length != 0
            ? _rectangleChartDataMap[i].detractorList![0].expr0!
            : 0,
        _rectangleChartDataMap[i].neutralList!.length != 0
            ? _rectangleChartDataMap[i].neutralList![0].expr0!
            : 0,
        _rectangleChartDataMap[i].proactiveList!.length != 0
            ? _rectangleChartDataMap[i].proactiveList![0].expr0!
            : 0,
        _rectangleChartDataMap[i].passiveList!.length != 0
            ? _rectangleChartDataMap[i].passiveList![0].expr0!
            : 0,
      ));
      int val = 0;
      // Data.value += _rectangleChartDataMap[i].unscoredList![0].expr0!;
      // print("chartData2 $chartData");
    }
    // print("chartData3 $chartData");
    // _rectangleChartDataMap.forEach((element) {
    //   if (element.unscoredList!.length != 0) {
    //     Data.value = Data.value + element.unscoredList![0].expr0!;
    //   }

    //   print("Data ${Data}");
    //   // print("name ${element.name} ${element.unscored}");
    // });
    List<ExpenseData> reversedchartData = chartData.reversed.toList();

    return reversedchartData;
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
