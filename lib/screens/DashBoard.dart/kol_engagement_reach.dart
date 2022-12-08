import 'package:connex/Apis/Dashboard/apis/dashboardApis.dart';
import 'package:connex/controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../Apis/Dashboard/models/pie_chart_data.dart';
import '../../Apis/Dashboard/models/pie_data_map.dart';

class KolEngagemetReach extends GetView<StoreController> {
  // KolEngagemetReach({super.key});
  // final dataMap = <String, double>{
  //   "Flutter": 5,
  //   "React": 3,
  //   "Xamarin": 2,
  //   "Ionic": 2,
  // };
  // List<DataMap> dataList = [];

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
    return Obx(
      () => Container(
          // height: MediaQuery.of(context).size.height / 2.5,
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
                      future: DashBoardApi.getPieChartData(
                          context,
                          controller.brandsFocus,
                          controller.myValue,
                          controller.BrandsName),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        PieChartData? _pieChartData = snapshot.data;
                        // print("_pieChartData $_pieChartData");
                        RxList _dataMap = RxList([]);
                        RxList<DataMap>? dataList = RxList([]);

                        _pieChartData?.records!.forEach((element) {
                          // print("dataList.length ${element.advocacyScore1C}");
                          dataList.add(
                            DataMap(
                              unorted: element.advocacyScore1C == null
                                  ? element.expr0!
                                  : 0,
                              neutral: element.advocacyScore1C == "Neutral"
                                  ? element.expr0!
                                  : 0,
                              proactive: element.advocacyScore1C ==
                                      "Proactive Advocate"
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
                        List<DataMap> detractor = [];
                        List<DataMap> unorted = [];
                        List<DataMap> neutral = [];
                        List<DataMap> passive = [];
                        List<DataMap> proactive = [];
                        detractor = dataList.where((element) {
                          return element.detractor != 0;
                        }).toList();
                        unorted = dataList.where((element) {
                          return element.unorted != 0;
                        }).toList();
                        neutral = dataList.where((element) {
                          return element.neutral != 0;
                        }).toList();
                        passive = dataList.where((element) {
                          return element.passive != 0;
                        }).toList();
                        proactive = dataList.where((element) {
                          return element.proactive != 0;
                        }).toList();
                        // print("dataList.length ${passive[0].passive}");
                        // print("dataList.length ------->>>>");
                        // print("dataList.length1 ${detractor.length}");
                        // print("dataList.length2 ${unorted.length}");
                        // print("dataList.length3 ${neutral.length}");
                        // print("dataList.length4 ${passive.length}");
                        // print("dataList.length5 ${proactive.length}");
                        // dataList.forEach((element) {
                        //   print("element.detractor ${element.detractor}");
                        //   print("element.neutral ${element.neutral}");
                        //   print("element.passive ${element.passive}");
                        //   print("element.proactive ${element.proactive}");
                        //   print("element.unorted ${element.unorted}");
                        // });
                        Rx<Map<String, double>> dataMap = Rx({
                          'Unscored: ${unorted.length != 0 ? unorted[0].unorted : 0}':
                              unorted.length != 0
                                  ? unorted[0].unorted!.toDouble()
                                  : 0,
                          "Detractor: ${detractor.length != 0 ? detractor[0].detractor : 0}":
                              detractor.length != 0
                                  ? detractor[0].detractor!.toDouble()
                                  : 0,
                          "Neutral: ${neutral.length != 0 ? neutral[0].neutral : 0}":
                              neutral.length != 0
                                  ? neutral[0].neutral!.toDouble()
                                  : 0,
                          "Passive Supporter: ${passive.length != 0 ? passive[0].passive : 0}":
                              passive.length != 0
                                  ? passive[0].passive!.toDouble()
                                  : 0,
                          "Proactive Advocate: ${proactive.length != 0 ? proactive[0].proactive : 0}":
                              proactive.length != 0
                                  ? proactive[0].proactive!.toDouble()
                                  : 0,
                        });
                        // Map<String, String> dataMap1 = {
                        //   'unorted': dataList[0].unorted!.toString(),
                        //   "Passive Supporter": dataList[3].neutral!.toString(),
                        //   "Proactive Advocate": dataList[1].passive!.toString(),
                        //   "Neutral": dataList[4].proactive!.toString(),
                        //   "Detractor": dataList[2].detractor!.toString(),
                        // };
                        // print(dataMap);

                        return PieChart(
                          dataMap: dataMap.value,
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
          )),
    );
  }
}
