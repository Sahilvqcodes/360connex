import 'package:connex/Apis/Dashboard/apis/dashboardApis.dart';
import 'package:connex/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Apis/Dashboard/models/engagements.dart';
import '../../Apis/Dashboard/models/engagements_sort.dart';

// class TotalEngagements extends StatefulWidget {
//   RxList brandFocus;
//   TotalEngagements(this.brandFocus, {super.key});

//   @override
//   State<TotalEngagements> createState() => _TotalEngagementsState();
// }

class AllEngagemets extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(controller.EngagementsName.length, (index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            // height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 1.10,
            // height: 200,
            // width: 300,
            color: Colors.white,
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "${controller.BrandsName.length <= 3 ? controller.EngagementsName[index] : ""} ",
                      style: const TextStyle(
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
                  FutureBuilder(
                      future: controller.EngagementsName[index] ==
                              "Total Engagements"
                          ? DashBoardApi.getTotalEngagements(
                              context,
                              controller.congress,
                              controller.brandsFocus,
                              controller.myValue,
                              controller.BrandsName)
                          : controller.EngagementsName[index] ==
                                  "Commercial Engagements"
                              ? DashBoardApi.getCommercialEngagements(
                                  context,
                                  controller.congress,
                                  controller.brandsFocus,
                                  controller.myValue,
                                  controller.BrandsName)
                              : DashBoardApi.getMedicalEngagements(
                                  context,
                                  controller.congress,
                                  controller.brandsFocus,
                                  controller.myValue,
                                  controller.BrandsName),
                      // future: DashBoardApi.getTotalEngagements(
                      //     context, controller.selectedItems, controller.brandsFocus),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        List<AllData>? _totalEngagements = snapshot.data;

                        if (!snapshot.hasData ||
                            _totalEngagements == null ||
                            snapshot.data == null) {
                          return Center(child: CircularProgressIndicator());
                        }
                        return Container(
                          height: MediaQuery.of(context).size.height / 3.8,
                          child: MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ListTile(
                                  // title: Text("name"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SizedBox(
                                          width: 30,
                                          child: Text(
                                            "Q1",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SizedBox(
                                          width: 30,
                                          child: Text(
                                            "Q2",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SizedBox(
                                          width: 30,
                                          child: Text(
                                            "Q3",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SizedBox(
                                          width: 30,
                                          child: Text(
                                            "Q4",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SizedBox(
                                          width: 40,
                                          child: Text(
                                            "Total",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                  _totalEngagements.length,
                                  (index) {
                                    List<EngagementsRecords>? forExpr1 = [];
                                    List<EngagementsRecords>? forExpr2 = [];
                                    List<EngagementsRecords>? forExpr3 = [];
                                    List<EngagementsRecords>? forExpr4 = [];
                                    int totalValue = 0;
                                    if (_totalEngagements[index].recordsList !=
                                        null) {
                                      forExpr1 = _totalEngagements[index]
                                          .recordsList!
                                          .where(
                                              (element) => element.expr0 == 1)
                                          .toList();
                                      forExpr2 = _totalEngagements[index]
                                          .recordsList!
                                          .where(
                                              (element) => element.expr0 == 2)
                                          .toList();
                                      forExpr3 = _totalEngagements[index]
                                          .recordsList!
                                          .where(
                                              (element) => element.expr0 == 3)
                                          .toList();
                                      forExpr4 = _totalEngagements[index]
                                          .recordsList!
                                          .where(
                                              (element) => element.expr0 == 4)
                                          .toList();
                                      // print("_overView $index  $forExpr1");

                                      _totalEngagements[index]
                                          .recordsList!
                                          .forEach(
                                        (element) {
                                          totalValue += element.engs!;
                                        },
                                      );
                                    }
                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: _totalEngagements[
                                                                  index]
                                                              .recordsList![0]
                                                              .name ==
                                                          "Leukemia-Lymphoma"
                                                      ? Colors.green
                                                      : _totalEngagements[index]
                                                                  .recordsList![
                                                                      0]
                                                                  .name ==
                                                              "MM Portfolio"
                                                          ? Colors.blue
                                                          : _totalEngagements[
                                                                          index]
                                                                      .recordsList![
                                                                          0]
                                                                      .name ==
                                                                  "Prostate Franchise"
                                                              ? Colors.yellow
                                                              : null,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                  child: Text(
                                                      "${_totalEngagements[index].recordsList![0].name}")),
                                            ],
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5),
                                                child: SizedBox(
                                                  width: 30,
                                                  child: Text(
                                                      "${forExpr1.length > 0 ? forExpr1[0].engs : "-"}"),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5),
                                                child: SizedBox(
                                                  width: 30,
                                                  child: Text(
                                                      "${forExpr2.length > 0 ? forExpr2[0].engs : "-"}"),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5),
                                                child: SizedBox(
                                                  width: 30,
                                                  child: Text(
                                                    "${forExpr3.length > 0 ? forExpr3[0].engs : "-"}",
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5),
                                                child: SizedBox(
                                                  width: 30,
                                                  child: Text(
                                                      "${forExpr4.length > 0 ? forExpr4[0].engs : "-"}"),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 5),
                                                child: SizedBox(
                                                    width: 40,
                                                    child: Text(
                                                      "${totalValue}",
                                                      textAlign: TextAlign.end,
                                                    )),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
