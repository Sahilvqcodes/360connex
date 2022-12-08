import 'package:connex/Apis/KolSearch/apis/kolSearchApis.dart';
import 'package:connex/controller/home_controller.dart';
import 'package:connex/screens/KolSearch/kol_filters/filters.dart';
import 'package:connex/widgets/extension.dart';
import 'package:connex/widgets/nav_menu.dart';
import 'package:connex/widgets/pageSelect.dart';
import 'package:connex/widgets/widget_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Apis/KolSearch/models/enagements_model.dart';
import '../../Apis/KolSearch/models/kol_search_Data.dart';
import '../../custom_search.dart';
import '../../widgets/bottom_text.dart';
import '../pages/drawer.dart';

// class KolSearch extends StatefulWidget {
//   const KolSearch({Key? key}) : super(key: key);

//   @override
//   State<KolSearch> createState() => _KolSearchState();
// }
// RxDouble value = 0.0.obs;

class KolSearch extends GetView<StoreController> {
  KolSearcDataModel? kolData;
  KolSearchEngagements? kolSearchTotalEnagements;
  KolSearchEngagements? kolSearchTotalEvents;
  KolSearchEngagements? kolSearchTotalMeetings;

  // List of items in our dropdown menu
  var items = ['Last Name', 'Total Engagements'];
  allKolFunctionsHit(BuildContext context) async {
    kolSearchTotalEnagements = await KolSearchApi.fetchKolEngagements(context);
    // kolSearchTotalEvents = await KolSearchApi.FetchTotalEvents(context);
    kolSearchTotalMeetings = await KolSearchApi.FetchTotalMeetings(context);
    kolData = await KolSearchApi.getKolSearchData(context);
    kolData!.records!.sort((a, b) {
      return a.lastName!.toLowerCase().compareTo(b.lastName!.toLowerCase());
    });

    // print("kolSearchTotalMeetings ${kolSearchTotalMeetings!.records}");
  }

  void _showPageSelect(context) async {
    var results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return PageSelect(
          pageLength: kolData!.records!.length,
        );
      },
    );

    if (results != null) {
      controller.pageNo.value = results;
    }
  }

  void _showFilters(context) async {
    var results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Filters();
      },
    );

    if (results != null) {}
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.grey,
        drawer: const AppDrawer(),
        backgroundColor: Color(0xffededeb),
        body: PreferredSize(
          preferredSize: size,
          child: Container(
            child: Column(
              children: [
                WidgetSize(
                  onChange: (Size size) {
                    // var data = size.height;
                    // value = data.obs;
                    // print(value);
                  },
                  child: Container(
                    child: NavBar(),
                  ),
                ),
                Container(
                  height: size.height - 265,
                  // color: Colors.green,
                  child: _kolSearch(context, size),
                ),
              ],
            ),
          ),
        ));
  }

  _kolSearch(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: allKolFunctionsHit(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // KolSearcDataModel? kolData = snapshot.data;

            // print("_kolData ${kolData[""]}");
            // if (!snapshot.hasData || snapshot.data == null) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            return Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'KOL Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _searchBar(context),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _showFilters(context);
                      },
                      child: Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF05357c)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            'Filters',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xFF05357c)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF05357c)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFF05357c)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Add Engagements',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250, top: 50),
                  child: Text(
                    'Applied Filters:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 10.0,
                  color: Color(0xFF05357c),
                  thickness: 4.0,
                ),
                const SizedBox(height: 10),
                Container(
                  width: size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Showing  ${kolData?.totalSize ?? 0} results',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Short By: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Obx(
                              () => Container(
                                // height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF05357c)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  //color: Color(0xFF05357c)
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: controller.dropdownvalue.value,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            items, //           textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      controller.dropdownvalue.value =
                                          newValue!;
                                    },
                                  ),
                                ),
                              ),
                            ),
                            // Container(
                            //   height: 30,
                            //   width: 90,
                            //   decoration: BoxDecoration(
                            //     border: Border.all(color: Color(0xFF05357c)),
                            //     borderRadius:
                            //         const BorderRadius.all(Radius.circular(5)),
                            //     //color: Color(0xFF05357c)
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     children: const [
                            //       Padding(
                            //         padding: EdgeInsets.only(left: 5.0),
                            //         child: Text(
                            //           'Last Name',
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               color: Colors.black, fontSize: 12),
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: EdgeInsets.only(right: 5.0),
                            //         child: Icon(
                            //           Icons.keyboard_arrow_down,
                            //           color: Colors.black,
                            //           size: 15,
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_downward,
                              color: Color(0xFF05357c),
                              size: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_upward,
                              color: Color(0xFF05357c),
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ]),
                ),
                const SizedBox(height: 20),
                (kolData == null)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Obx(
                        () => Column(
                          children: [
                            ...List.generate(
                                controller.pageNo.value ==
                                        ((kolData!.records!.length / 10)
                                                .toInt() +
                                            1)
                                    ? kolData!.records!.length % 10
                                    : 10, (index) {
                              int indexValue =
                                  index + ((controller.pageNo.value - 1) * 10);
                              var totalEnagements;
                              int totalEvents = 0;
                              var totalMeetings;
                              int activities = 0;

                              print(indexValue);
                              print(
                                  "kolSearchTotalEnagements $kolSearchTotalEnagements");
                              kolSearchTotalEnagements!.records!.forEach(
                                (element) {
                                  if (element.id ==
                                      kolData!.records![indexValue].id) {
                                    totalEnagements = element.engagements ?? 0;
                                    // print("totalEnagements $totalEnagements");
                                  }
                                },
                              );
                              // kolSearchTotalEvents!.records!.forEach(
                              //   (element) {
                              //     print(
                              //         "${kolData!.records![index].id} ${kolData!.records![index].name}");
                              //     if (element.id == kolData!.records![index].id) {
                              //       totalEvents = element.events ?? 0;
                              //     }
                              //   },
                              // );
                              kolSearchTotalMeetings!.records!.forEach(
                                (element) {
                                  if (element.id ==
                                      kolData!.records![indexValue].id) {
                                    totalMeetings = element.meetings ?? 0;
                                  }
                                },
                              );
                              // activities =
                              //     (totalEnagements ?? 0 - totalMeetings ?? 0);

                              return Container(
                                width: size.width - 50,
                                // height: 50,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Colors.black,
                                      width: 0.2,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        20.0), //<-- SEE HERE
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        kolData!.records![indexValue]
                                                    .profileImageLargeC !=
                                                "https://c.na16.content.force.com/servlet/servlet.ImageServer?id=015j0000000umSh&oid=00D23000000FGah&lastMod=1430337935000"
                                            ? Container(
                                                height: 120,
                                                width: 120,
                                                child: Image.network(
                                                  "${kolData!.records![indexValue].profileImageLargeC!}",
                                                  // scale: 1.5,
                                                ),
                                              )
                                            : Image.asset(
                                                "assets/images/dumyProfile.jpeg",
                                                scale: 2,
                                              ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "${kolData!.records![indexValue].name},${kolData!.records![index].degreePc ?? ""}",
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "${kolData!.records![indexValue].primaryTitlePositionPc ?? ""}",
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "${kolData!.records![indexValue].primaryTitleAffiliationPc ?? ""}",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 143, 140, 140),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "${kolData!.records![indexValue].primaryTitleCityStatePc ?? ""}",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 143, 140, 140),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "Speciality: ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  kolData!.records![indexValue]
                                                          .specialtyC ??
                                                      "",
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 44, 43, 43),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Alignment: ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 15,
                                                  width: 15,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:
                                                        "${kolData!.records![indexValue].kOLBrandsR!.brandsRecords![0].brandMasterR!.colorC}"
                                                            .toColor(),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  kolData!
                                                          .records![indexValue]
                                                          .kOLBrandsR!
                                                          .brandsRecords![0]
                                                          .brandMasterR!
                                                          .name ??
                                                      "",
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 44, 43, 43),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "Classifications: ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  kolData!
                                                          .records![indexValue]
                                                          .kOLBrandsR!
                                                          .brandsRecords![0]
                                                          .classificationC ??
                                                      "",
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 44, 43, 43),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Engagements ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Total-  ${totalEnagements ?? 0}",
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                      "1:1- ${totalMeetings ?? 0}"),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                      "Activities-  ${(totalEnagements ?? 0) - (totalMeetings ?? 0)}")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Page",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                InkWell(
                                  onTap: () {
                                    _showPageSelect(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: size.width * 0.025),
                                        // height: 35,
                                        // width: size.width * 0.32,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255,
                                              255), //<-- SEE HERE
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Obx(
                                              () => Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "${controller.pageNo.value}",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
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
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_back_ios_new)),
                                IconButton(
                                    onPressed: () {
                                      controller.pageNo += 1;
                                    },
                                    icon:
                                        Icon(Icons.arrow_forward_ios_outlined))
                              ],
                            ),
                            const BottomText(),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
              ],
            );
          }),
    );
  }

  _searchBar(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: TextField(
          onTap: () {
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate());
          },
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              border: OutlineInputBorder(),
              hintText: "search",
              suffixIcon: IconButton(
                color: Color(0xFF05357c),
                onPressed: () {},
                icon: Icon(Icons.search),
              ))),
    );
  }
}
