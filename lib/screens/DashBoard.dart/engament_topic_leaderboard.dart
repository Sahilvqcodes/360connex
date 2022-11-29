import 'package:connex/Apis/DashboardApis.dart';
import 'package:flutter/material.dart';

import '../../Models/engagements_sort.dart';

class EngagementTopicLeaderBoard extends StatefulWidget {
  const EngagementTopicLeaderBoard({Key? key}) : super(key: key);

  @override
  State<EngagementTopicLeaderBoard> createState() =>
      _EngagementTopicLeaderBoardState();
}

class _EngagementTopicLeaderBoardState
    extends State<EngagementTopicLeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // height: 440,
        width: MediaQuery.of(context).size.width / 1.10,
        color: Colors.white,
        child: DefaultTabController(
          length: 3, // length of tabs
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
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(child: const Text('Leukemia-Lymphoma')),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(child: const Text('MM Portfolio')),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Expanded(
                        child: Text('Prostate Franchise'),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 330,
                child: TabBarView(
                  children: <Widget>[
                    ...List.generate(3, (i) {
                      return FutureBuilder(
                          future: DashBoardApi.getEngagementTopicLraderboard(
                              context),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            List<TotalLeaderboardData>? listTotalLeaderboard =
                                snapshot.data;
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
    ]);
  }
}
