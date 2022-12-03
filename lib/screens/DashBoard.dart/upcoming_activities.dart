import 'package:connex/Apis/DashboardApis.dart';
import 'package:connex/controller/home_controller.dart';
import 'package:connex/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../Models/1:1_and_activities.dart';
import '../../Models/engagements_sort.dart';

// class UpcomingActivities extends StatefulWidget {
//   const UpcomingActivities({Key? key}) : super(key: key);

//   @override
//   State<UpcomingActivities> createState() => _UpcomingActivitiesState();
// }

class UpcomingActivities extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(children: [
        Container(
          // height: MediaQuery.of(context).size.height * 0.58,
          width: MediaQuery.of(context).size.width / 1.10,
          color: Colors.white,
          child: DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Activities",
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
                const TabBar(
                  labelColor: Color(0xFF05357c),
                  unselectedLabelColor: Color.fromARGB(255, 80, 78, 78),
                  indicatorWeight: 5,
                  indicatorColor: Color(0xFF05357c),
                  // indicatorPadding: EdgeInsets.symmetric(vertical: 0),
                  tabs: [Text("UPCOMING"), Text("PREVIOUS")],
                ),
                Column(
                  children: [
                    Container(
                      height: 550,
                      child: TabBarView(
                        children: <Widget>[
                          ...List.generate(2, ((i) {
                            return FutureBuilder(
                              future: DashBoardApi.getMeetingsAndActivites(
                                  context,
                                  controller.brandsFocus,
                                  controller.congress,
                                  controller.myValue),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                List<MeetingsActivitiesData>?
                                    _meetingsActivitesList = snapshot.data;
                                MeetingsActivitiesData? _meetingsActivites =
                                    _meetingsActivitesList?[1];
                                List<MeetingsActivitesRecords>? _upcomingList;

                                i == 0
                                    ? _upcomingList =
                                        _meetingsActivites?.upcomingList
                                    : _upcomingList =
                                        _meetingsActivites?.previousList;
                                int length = _upcomingList?.length ?? 0;
                                return _upcomingList?.length != 0
                                    ? MediaQuery.removePadding(
                                        removeTop: true,
                                        context: context,
                                        child: ListView(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          children: [
                                            ...List.generate(
                                              length >= 5 ? 5 : length,
                                              (index) {
                                                String? _day = DateFormat.EEEE()
                                                    .format(DateTime.parse(
                                                        _upcomingList?[index]
                                                                .masterEngagementR!
                                                                .engagementDateC ??
                                                            "2022-11-23"));
                                                String? _month = DateFormat
                                                        .LLLL()
                                                    .format(DateTime.parse(
                                                        _upcomingList?[index]
                                                                .masterEngagementR!
                                                                .engagementDateC ??
                                                            "2022-11-23"));
                                                String? _date = DateFormat.d()
                                                    .format(DateTime.parse(
                                                        _upcomingList?[index]
                                                                .masterEngagementR!
                                                                .engagementDateC ??
                                                            "2022-11-23"));
                                                return Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "${_day} ${_month} ${_date}",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      const Divider(
                                                        height: 10.0,
                                                        color: Colors.black54,
                                                        endIndent: 10,
                                                        indent: 10,
                                                        thickness: 1.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 15,
                                                            width: 15,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  "${_upcomingList?[index].masterEngagementR!.brandMasterR!.colorC}"
                                                                      .toColor(),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            _upcomingList?[
                                                                        index]
                                                                    .kOLAccountR!
                                                                    .name ??
                                                                "",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          )),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      )
                                    : Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              "No Meeting Found!",
                                              style: TextStyle(
                                                color: Color(0xFF05357c),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      );
                              },
                            );
                          })),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF05357c),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Add Engagements",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
