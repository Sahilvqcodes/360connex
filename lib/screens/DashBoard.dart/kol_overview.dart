import 'package:connex/Apis/DashboardApis.dart';
import 'package:connex/Models/Kol_overview.dart';
import 'package:connex/Models/brandList_model.dart';
import 'package:flutter/material.dart';

import '../../Models/engagements_sort.dart';
import '../../Models/engagements.dart';
import '../peopleone.dart';

class KolOverview extends StatelessWidget {
  KolOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.height / 4,
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
                "KOL Overview",
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
            FutureBuilder(
              future: DashBoardApi.totalKolOverview(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                KolOvervievAndInstitution? _kolOverview = snapshot.data;

                if (!snapshot.hasData || _kolOverview == null) {
                  return Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Total KOLs",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${_kolOverview.records![0].expr0}",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            FutureBuilder(
              future: DashBoardApi.targetKolOverview(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                KolOvervievAndInstitution? _kolOverview = snapshot.data;

                if (!snapshot.hasData || _kolOverview == null) {
                  return Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Target KOLs",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${_kolOverview.records![0].expr0}",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            FutureBuilder(
              future: DashBoardApi.classificationKolOverview(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                KolOvervievAndInstitution? _kolOverview = snapshot.data;
                // print("_kolOverview ${_kolOverview?.records![0].expr0}");

                List<KolRecords>? _academic = _kolOverview?.records!
                    .where(
                        (element) => element.kOLClassificationC == "Academic")
                    .toList();
                List<KolRecords>? _community = _kolOverview?.records!
                    .where(
                        (element) => element.kOLClassificationC == "Community")
                    .toList();
                List<KolRecords>? _lugpa = _kolOverview?.records!
                    .where((element) => element.kOLClassificationC == "LUGPA")
                    .toList();
                if (!snapshot.hasData || _kolOverview == null) {
                  return Center(child: CircularProgressIndicator());
                }
                print("_academic ${_academic!.length}");
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "KOL Classification",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Academic: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "${_academic[0].expr0}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Community: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "${_community![0].expr0}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "LUGPA: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "${_lugpa![0].expr0}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    color: Color(0xFF05357c),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "KOL Profiles",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
