import 'package:connex/Apis/DashboardApis.dart';
import 'package:connex/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/engagements_sort.dart';

// class EngagementTopicLeaderBoard extends StatefulWidget {
//   const EngagementTopicLeaderBoard({Key? key}) : super(key: key);

//   @override
//   State<EngagementTopicLeaderBoard> createState() =>
//       _EngagementTopicLeaderBoardState();
// }

class EngagementTopicLeaderBoard extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(children: [
        Container(
          // height: 440,
          width: MediaQuery.of(context).size.width / 1.10,
          color: Colors.white,
          child: DefaultTabController(
            length: controller.BrandsName.length, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Engagement Topic Leaderboard",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  height: 10.0,
                  color: Colors.black54,
                  endIndent: 10,
                  indent: 10,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TabBar(
                  labelColor: Color(0xFF05357c),
                  unselectedLabelColor: Color.fromARGB(255, 80, 78, 78),
                  indicatorWeight: 5,
                  indicatorColor: Color(0xFF05357c),
                  // indicatorPadding: EdgeInsets.symmetric(vertical: 0),
                  tabs: [
                    ...List.generate(
                      controller.BrandsName.length,
                      ((i) {
                        return Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.BrandsName[i] ==
                                        "Leukemia-Lymphoma"
                                    ? Colors.green
                                    : controller.BrandsName[i] == "MM Portfolio"
                                        ? Colors.blue
                                        : Colors.yellow,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Text('${controller.BrandsName[i]}')),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
                Container(
                  height: 330,
                  child: TabBarView(
                    children: <Widget>[
                      ...List.generate(controller.BrandsName.length, (i) {
                        return FutureBuilder(
                            future: DashBoardApi.getEngagementTopicLraderboard(
                                context, controller.BrandsName),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              List<TotalLeaderboardData>? listTotalLeaderboard =
                                  snapshot.data;
                              // listTotalLeaderboard!.forEach((element) {

                              // });
                              int diseasesLength = listTotalLeaderboard?[i]
                                      .diseasesFocusList
                                      ?.length ??
                                  0;
                              return MediaQuery.removePadding(
                                removeTop: true,
                                context: context,
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Brand Focus",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 0.0),
                                            child: Text(
                                              "Disease Focus",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ...List.generate(
                                      5,
                                      (index) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 5,
                                                  bottom: 5,
                                                  right: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      "${listTotalLeaderboard?[i].brandFocusList?[index].topic}",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      index < diseasesLength
                                                          ? "${listTotalLeaderboard?[i].diseasesFocusList?[index].topic}"
                                                          : "",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              height: 10.0,
                                              color: Color.fromARGB(
                                                  137, 150, 147, 147),
                                              endIndent: 10,
                                              indent: 10,
                                              thickness: 0.5,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              );
                            });
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
