import 'package:connex/Apis/Dashboard/apis/dashboardApis.dart';
import 'package:connex/Routes/app_routes.dart';
import 'package:connex/controller/home_controller.dart';
import 'package:connex/screens/DashBoard.dart/institution.dart';
import 'package:connex/screens/DashBoard.dart/kol_overview.dart';
import 'package:connex/screens/DashBoard.dart/all_engagements.dart';
import 'package:connex/screens/DashBoard.dart/engament_topic_leaderboard.dart';
import 'package:connex/screens/DashBoard.dart/kol_engagement_tracking.dart';
import 'package:connex/widgets/bottom_text.dart';
import 'package:connex/widgets/nav_menu.dart';
import 'package:connex/widgets/singleSelect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Apis/Dashboard/models/brandList_model.dart';
import '../../Apis/Dashboard/models/congressList_model.dart';
import '../DashBoard.dart/1:1Engagements.dart';
import '../DashBoard.dart/activity.dart';
import '../DashBoard.dart/upcoming_activities.dart';
import 'drawer.dart';
import '../DashBoard.dart/kol_engagement_reach.dart';
import 'package:http/http.dart' as http;

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

class HomeScreen extends GetView<StoreController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool value = false;
  bool isChecked = false;
  String dropdownvalue = '2022';

  // List of items in our dropdown menu
  var items = [
    '2022',
  ];
  String dropdownvalue2 = 'Select Congress';

  List BrandsName = [
    "Leukemia-Lymphoma",
    "MM Portfolio",
    "Prostate Franchise",
  ];
  List EngagementsName = [
    "Total Engagements",
    "Commercial Engagements",
    "Medical Engagemnts",
  ];

  Autogenerated? _brandLists;
  CongressList? _congressList;

  getCongressListFunction(context) async {
    _congressList = await DashBoardApi.getCongressList(context);
  }

  void _showSingleSelect(context) async {
    _congressList!.records!.forEach((element) {
      controller.congressItems.add(element);
    });

    final List<CongressRecords>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleSelect(
          congress: controller.congressItems,
        );
      },
    );

    if (results != null) {
      // print("results $results");

      controller.congress.clear();
      controller.congress.add(results[0]);
      // print("controller.congress ${controller.congress}");
      // congresSelect(results[0].id!);
      // print("_CongressItems ${_CongressItems[0].id}");
    }
    // print("results ${results![0].labelC}");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey,
      backgroundColor: Color(0xffededeb),

      drawer: const AppDrawer(),
      body: PreferredSize(
        preferredSize: size,
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              FutureBuilder(
                  future: getCongressListFunction(context),
                  builder: (BuildContext context, snapshot) {
                    return _dashBoard(context, size);
                  }),
              const SizedBox(height: 10),
              AllEngagemets(),
              // Obx(() => AllEngagements(brandFocus, congressSelect)),
              // const SizedBox(height: 10),
              // CommercialEngagements(),
              // // const SizedBox(height: 10),
              // MedicalEngagements(),

              const SizedBox(height: 10),
              KolOverview(),

              const SizedBox(height: 10),
              kolInstitution(),

              const SizedBox(
                height: 10,
              ),
              // Obx(() => _activity(brandFocus)),
              Activity(),
              const SizedBox(height: 10),
              // Obx(() => _kolEngagementReach(brandFocus)),
              KolEngagemetReach(),

              const SizedBox(height: 10),
              KolEngagemetTracking(),

              const SizedBox(height: 10),
              EngagementTopicLeaderBoard(),

              const SizedBox(
                height: 10,
              ),
              MeetingEngagements(),

              const SizedBox(
                height: 10,
              ),
              UpcomingActivities(),
              const SizedBox(
                height: 10,
              ),
              const BottomText(),
              const SizedBox(
                height: 30,
              ),
              // TabWidget(),
            ],
          ),
        ),
      ),
    );
  }

  _dashBoard(BuildContext context, Size size) {
    // print("brandFocusRxList $brandFocus");
    return Obx(
      () => Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                  child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.HOMESCREEN);
                },
                child: const Text(
                  "Dashboard",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
              Row(
                children: [
                  Checkbox(
                    value: controller.myValue.value,
                    activeColor: Theme.of(context).colorScheme.primary,
                    onChanged: (bool? newValue) {
                      controller.upateMyValue();
                      print(controller.myValue);
                    },
                  ),
                  const Text(
                    "My View ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Text(
                "Date Range:",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 1,
                )),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    // Initial Value
                    isExpanded: true,
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      // setState(() {
                      //   dropdownvalue = newValue!;
                      // });
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 1,
                )),
                child: InkWell(
                  onTap: () {
                    _showSingleSelect(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        margin: EdgeInsets.only(left: size.width * 0.025),
                        // height: 35,
                        // width: size.width * 0.32,
                        decoration: const BoxDecoration(
                          color:
                              Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.congress.length == 0
                                  ? "Select Congress"
                                  : controller.congress[0].labelC!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
