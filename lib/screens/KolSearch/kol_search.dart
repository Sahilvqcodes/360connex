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

class KolSearch extends GetView<StoreController> {
  // KolSearcDataModel? controller.kolData.value;

  KolSearchEngagements? kolSearchTotalEnagements;
  KolSearchEngagements? kolSearchTotalEvents;
  KolSearchEngagements? kolSearchTotalMeetings;
  int? lastPage;
  var _textController = TextEditingController();
  // List of items in our dropdown menu
  var items = ['Last Name', 'Total Engagements'];
  allKolFunctionsHit(BuildContext context) async {
    kolSearchTotalEnagements = await KolSearchApi.fetchKolEngagements(context);
    // kolSearchTotalEvents = await KolSearchApi.FetchTotalEvents(context);
    kolSearchTotalMeetings = await KolSearchApi.FetchTotalMeetings(context);
    controller.kolData.value = await KolSearchApi.getKolSearchData(context);
    print("controller.controller.kolData.value ${controller.kolData.value}");
  }

  void _showPageSelect(context) async {
    var results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return PageSelect(
          pageLength: lastPage,
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
            // KolSearcDataModel? controller.kolData.value = snapshot.data;

            // print("_kolData ${controller.kolData.value[""]}");
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
                          'Showing  ${controller.kolData.value.records?.length ?? 0} results',
                          // '${controller.KolDataList.length}',
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
                            Container(
                              // height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF05357c)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
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
                                    controller.dropdownvalue.value = newValue!;
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                controller.updateSortByAlphabaticaly();
                                print(controller.sortByAlphabaticaly);
                              },
                              child: const Icon(
                                Icons.arrow_downward,
                                color: Color(0xFF05357c),
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                controller.updateSortByAlphabaticaly();
                              },
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Color(0xFF05357c),
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ]),
                ),
                const SizedBox(height: 20),
                (controller.kolData.value == null ||
                        controller.kolData.value.records == null)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Obx(() {
                        var shownData = controller.KolDataList!.length == 0
                            ? controller.kolData.value.records!
                            : controller.KolDataList;
                        lastPage = shownData!.length % 10 == 0
                            ? (shownData!.length / 10).toInt()
                            : (shownData!.length / 10).toInt() + 1;
                        if (controller.sortByAlphabaticaly == false) {
                          print(
                              "controller.sortByAlphabaticaly ${controller.sortByAlphabaticaly}");
                          shownData!.sort((a, b) {
                            return a.lastName!
                                .toLowerCase()
                                .compareTo(b.lastName!.toLowerCase());
                          });
                        } else {
                          shownData!.sort((b, a) {
                            return a.lastName!
                                .toLowerCase()
                                .compareTo(b.lastName!.toLowerCase());
                          });
                        }
                        print(
                            "controller.KolDataList[0].attributes${controller.KolDataList}");
                        return _textController.text.length != 0 &&
                                controller.KolDataList.length == 0
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Data Not Found!",
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
                              )
                            : Column(
                                children: [
                                  ...List.generate(
                                      controller.pageNo.value == lastPage
                                          ? shownData!.length % 10
                                          : 10, (index) {
                                    int indexValue = index +
                                        ((controller.pageNo.value - 1) * 10);
                                    var totalEnagements;
                                    int totalEvents = 0;
                                    var totalMeetings;
                                    int activities = 0;

                                    // print("lastPage $lastPage");
                                    // print(
                                    //     "kolSearchTotalEnagements $kolSearchTotalEnagements");
                                    kolSearchTotalEnagements!.records!.forEach(
                                      (element) {
                                        if (element.id ==
                                            shownData![indexValue].id) {
                                          totalEnagements =
                                              element.engagements ?? 0;
                                          // print("totalEnagements $totalEnagements");
                                        }
                                      },
                                    );
                                    // kolSearchTotalEvents!.records!.forEach(
                                    //   (element) {
                                    //     print(
                                    //         "${controller.kolData.value!.records![index].id} ${controller.kolData.value!.records![index].name}");
                                    //     if (element.id == controller.kolData.value!.records![index].id) {
                                    //       totalEvents = element.events ?? 0;
                                    //     }
                                    //   },
                                    // );
                                    kolSearchTotalMeetings!.records!.forEach(
                                      (element) {
                                        if (element.id ==
                                            shownData![indexValue].id) {
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
                                              shownData![indexValue]
                                                          .profileImageLargeC !=
                                                      "https://c.na16.content.force.com/servlet/servlet.ImageServer?id=015j0000000umSh&oid=00D23000000FGah&lastMod=1430337935000"
                                                  ? Container(
                                                      height: 120,
                                                      width: 120,
                                                      child: Image.network(
                                                        "${shownData![indexValue].profileImageLargeC!}",
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
                                                    "${shownData![indexValue].name},${controller.kolData.value!.records![index].degreePc ?? ""}",
                                                    style: TextStyle(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "${shownData![indexValue].primaryTitlePositionPc ?? ""}",
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "${shownData![indexValue].primaryTitleAffiliationPc ?? ""}",
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 143, 140, 140),
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "${shownData![indexValue].primaryTitleCityStatePc ?? ""}",
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 143, 140, 140),
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600),
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
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          shownData![indexValue]
                                                                  .specialtyC ??
                                                              "",
                                                          style: const TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      44,
                                                                      43,
                                                                      43),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
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
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 15,
                                                        width: 15,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              "${shownData![indexValue].kOLBrandsR!.brandsRecords![0].brandMasterR!.colorC}"
                                                                  .toColor(),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        shownData![indexValue]
                                                                .kOLBrandsR!
                                                                .brandsRecords![
                                                                    0]
                                                                .brandMasterR!
                                                                .name ??
                                                            "",
                                                        style: const TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    44,
                                                                    43,
                                                                    43),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
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
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        shownData![indexValue]
                                                                .kOLBrandsR!
                                                                .brandsRecords![
                                                                    0]
                                                                .classificationC ??
                                                            "",
                                                        style: const TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    44,
                                                                    43,
                                                                    43),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
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
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
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
                                                color: Color.fromARGB(255, 255,
                                                    255, 255), //<-- SEE HERE
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Obx(
                                                    () => Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "${controller.pageNo.value}",
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                          onPressed: controller.pageNo != 1
                                              ? () async {
                                                  controller.pageNo -= 1;
                                                }
                                              : null,
                                          icon: Icon(Icons.arrow_back_ios_new)),
                                      IconButton(
                                          onPressed:
                                              controller.pageNo != lastPage
                                                  ? () {
                                                      controller.pageNo += 1;
                                                    }
                                                  : null,
                                          icon: Icon(
                                              Icons.arrow_forward_ios_outlined))
                                    ],
                                  ),
                                  const BottomText(),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              );
                      })
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
            // showSearch(
            //     context: context,
            //     // delegate to customize the search bar
            //     delegate: CustomSearchDelegate());
          },
          controller: _textController,
          onChanged: (Value) {
            controller.KolDataList!.value =
                controller.kolData.value!.records!.where((element) {
              return element.name!
                  .toLowerCase()
                  .startsWith(Value.toLowerCase());
            }).toList();
            if (Value.length != 0 && controller.KolDataList!.value == 0) {
              controller.KolDataList!.value = [RecordsData(attributes: null)];
            }
            // print("Data $Data");
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
