import 'package:connex/Apis/Dashboard/apis/dashboardApis.dart';

import 'package:connex/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Apis/Dashboard/models/Kol_overview.dart';

class kolInstitution extends GetView<StoreController> {
  // kolInstitution({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
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
                  "Institutions",
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
                future: DashBoardApi.kolTotalEngagements(
                    context, controller.BrandsName, controller.congress),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  KolOvervievAndInstitution? _kolOverview = snapshot.data;

                  // if (!snapshot.hasData || _kolOverview == null) {
                  //   return Center(child: CircularProgressIndicator());
                  // }
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Total Engagements",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${_kolOverview != null ? _kolOverview.records![0].expr0 : 0}",
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
                future: DashBoardApi.kolTotalInstitutions(
                    context, controller.BrandsName),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  KolOvervievAndInstitution? _kolOverview = snapshot.data;

                  // if (!snapshot.hasData || _kolOverview == null) {
                  //   return Center(child: CircularProgressIndicator());
                  // }
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Total Institutions",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${_kolOverview != null ? _kolOverview.records![0].expr0 : 0}",
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
                future:
                    DashBoardApi.affliatedKols(context, controller.BrandsName),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  KolOvervievAndInstitution? _kolOverview = snapshot.data;

                  // if (!snapshot.hasData || _kolOverview == null) {
                  //   return Center(child: CircularProgressIndicator());
                  // }
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Affiliated KOLs",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${_kolOverview != null ? _kolOverview.records![0].expr0 : 0}",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: 50,
                    // width: 150,
                    decoration: BoxDecoration(
                      //  shape: BoxShape.circle,
                      color: Color(0xFF05357c),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "View Institutions",
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
                height: 20,
              )
            ],
          )),
    );
  }
}
