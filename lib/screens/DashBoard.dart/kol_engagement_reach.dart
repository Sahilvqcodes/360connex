import 'dart:ffi';

import 'package:connex/Apis/DashboardApis.dart';
import 'package:connex/Models/pie_data_map.dart';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../Models/pie_chart_data.dart';

class KolEngagemetReach extends StatelessWidget {
  KolEngagemetReach({super.key});
  // final dataMap = <String, double>{
  //   "Flutter": 5,
  //   "React": 3,
  //   "Xamarin": 2,
  //   "Ionic": 2,
  // };
  List<DataMap> dataList = [];

  List<Color> colorList = [
    const Color(0xffDFDFDF),
    const Color(0xffDF3E46),
    const Color(0xffF1DF4B),
    const Color(0xff356BDF),
    const Color(0xff008000),
  ];

  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(223, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2.5,
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
                "KOL Engagement Reach",
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
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 250,
              child: Center(
                child: FutureBuilder(
                    future: DashBoardApi.getPieChartData(context),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      PieChartData? _pieChartData = snapshot.data;
                      List _dataMap = [];

                      _pieChartData?.records!.forEach((element) {
                        print(element.advocacyScore1C);
                        dataList.add(
                          DataMap(
                            unorted: element.advocacyScore1C == null
                                ? element.expr0!
                                : 0,
                            neutral: element.advocacyScore1C == "Neutral"
                                ? element.expr0!
                                : 0,
                            proactive:
                                element.advocacyScore1C == "Proactive Advocate"
                                    ? element.expr0!
                                    : 0,
                            detractor: element.advocacyScore1C == "Detractor"
                                ? element.expr0!
                                : 0,
                            passive:
                                element.advocacyScore1C == "Passive Supporter"
                                    ? element.expr0!
                                    : 0,
                          ),
                        );
                      });
                      dataList.forEach((element) {
                        print("element.detractor ${element.detractor}");
                        print("element.neutral ${element.neutral}");
                        print("element.passive ${element.passive}");
                        print("element.proactive ${element.proactive}");
                        print("element.unorted ${element.unorted}");
                      });
                      Map<String, double> dataMap = {
                        'Unscored: ${dataList[0].unorted!}':
                            dataList[0].unorted!.toDouble(),
                        "Detractor: ${dataList[1].detractor!}":
                            dataList[1].detractor!.toDouble(),
                        "Neutral: ${dataList[2].neutral!}":
                            dataList[2].neutral!.toDouble(),
                        "Passive Supporter: ${dataList[3].passive!}":
                            dataList[3].passive!.toDouble(),
                        "Proactive Advocate: ${dataList[4].proactive!}":
                            dataList[4].proactive!.toDouble(),
                      };
                      // Map<String, String> dataMap1 = {
                      //   'unorted': dataList[0].unorted!.toString(),
                      //   "Passive Supporter": dataList[3].neutral!.toString(),
                      //   "Proactive Advocate": dataList[1].passive!.toString(),
                      //   "Neutral": dataList[4].proactive!.toString(),
                      //   "Detractor": dataList[2].detractor!.toString(),
                      // };
                      print(dataMap);

                      return PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 2.5,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 30,
                        animationDuration: const Duration(seconds: 3),
                        chartValuesOptions: const ChartValuesOptions(
                            showChartValues: false,
                            // showChartValuesOutside: true,
                            // showChartValuesInPercentage: true,
                            showChartValueBackground: false),
                        legendOptions: const LegendOptions(
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: TextStyle(fontSize: 15),
                            legendPosition: LegendPosition.bottom,
                            showLegendsInRow: true),
                        // gradientList: gradientList,
                      );
                    }),
              ),
            ),
          ],
        ));
  }
}
