import 'package:connex/Apis/DashboardApis.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../../Models/pie_chart_data.dart';

class KolEngagemetReach extends StatelessWidget {
  KolEngagemetReach({super.key});

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
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
              height: 20,
            ),
            Container(
              height: 200,
              child: Center(
                child: FutureBuilder(
                    future: DashBoardApi.getPieChartData(context),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      PieChartData? _pieChartData = snapshot.data;
                      List _dataMap = [];

                      _pieChartData?.records!.forEach((element) {});

                      return DChartPie(
                        data: [
                          {'domain': 'Flutter', 'measure': 28},
                          {'domain': 'React Native', 'measure': 27},
                          {'domain': 'Ionic', 'measure': 20},
                          {'domain': 'Cordova', 'measure': 15},
                        ],
                        fillColor: (pieData, index) => Colors.purple,
                        donutWidth: 30,
                        labelColor: Colors.white,
                      );
                      // return PieChart(
                      //   dataMap: dataMap,
                      //   colorList: colorList,
                      //   chartRadius: MediaQuery.of(context).size.width / 2.5,
                      //   chartType: ChartType.ring,
                      //   ringStrokeWidth: 30,
                      //   animationDuration: const Duration(seconds: 3),
                      //   chartValuesOptions: const ChartValuesOptions(
                      //       showChartValues: true,
                      //       showChartValuesOutside: true,
                      //       showChartValuesInPercentage: true,
                      //       showChartValueBackground: false),
                      //   legendOptions: const LegendOptions(
                      //       showLegends: true,
                      //       legendShape: BoxShape.rectangle,
                      //       legendTextStyle: TextStyle(fontSize: 15),
                      //       legendPosition: LegendPosition.bottom,
                      //       showLegendsInRow: true),
                      //   gradientList: gradientList,
                      // );
                    }),
              ),
            ),
          ],
        ));
  }
}
