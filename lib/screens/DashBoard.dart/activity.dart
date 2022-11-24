import 'package:connex/Apis/DashboardApis.dart';
import 'package:connex/Models/brands_activity.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 500,
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
                  "Activity",
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
                      Expanded(child: const Text('Prostate Franchise')),
                    ],
                  ),
                ],
              ),
              Container(
                height: 385,
                child: TabBarView(
                  children: <Widget>[
                    FutureBuilder(
                        future: DashBoardApi.getLeukemiaActivity(context),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          BrandsActivity? _brandsActivity = snapshot.data;

                          _brandsActivity?.records!.sort((b, a) =>
                              (a.kOLEngagementsR?.totalSize ?? 0).compareTo(
                                  b.kOLEngagementsR?.totalSize ?? 0));
                          // _brandsActivity!.records!.forEach((element) {
                          //   print(element.name);
                          // });

                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          return MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView(
                              children: [
                                ListTile(
                                  // title: Text("name"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      SizedBox(
                                        width: 95,
                                        child: Center(
                                            child: Text(
                                          "Engagements",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "iMono",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "I+V",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                  _brandsActivity!.totalSize!,
                                  (index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          leading: const CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                255, 111, 113, 112),
                                            radius: 20,
                                            child: Text(
                                              'I',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ), //Text
                                          ),
                                          title: SizedBox(
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                  "${_brandsActivity.records![index].name}"),
                                            ),
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                width: 40,
                                                child: Center(
                                                  child: Text(
                                                    "${_brandsActivity.records![index].kOLEngagementsR?.totalSize ?? "0"}",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore1C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore2C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          );
                        }),
                    FutureBuilder(
                        future: DashBoardApi.getMMPortfolioActivity(context),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          BrandsActivity? _brandsActivity = snapshot.data;
                          _brandsActivity?.records!.sort((b, a) =>
                              (a.kOLEngagementsR?.totalSize ?? 0).compareTo(
                                  b.kOLEngagementsR?.totalSize ?? 0));
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          return MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView(
                              children: [
                                ListTile(
                                  // title: Text("name"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      SizedBox(
                                        width: 95,
                                        child: Center(
                                            child: Text(
                                          "Engagements",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "iMono",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "I+V",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                  _brandsActivity!.totalSize!,
                                  (index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          leading: const CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                255, 111, 113, 112),
                                            radius: 20,
                                            child: Text(
                                              'I',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ), //Text
                                          ),
                                          title: SizedBox(
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                  "${_brandsActivity.records![index].name}"),
                                            ),
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                width: 40,
                                                child: Center(
                                                  child: Text(
                                                    "${_brandsActivity.records![index].kOLEngagementsR?.totalSize ?? "0"}",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore1C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore2C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          );
                        }),
                    FutureBuilder(
                        future:
                            DashBoardApi.getProstateFranchiseActivity(context),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          BrandsActivity? _brandsActivity = snapshot.data;
                          _brandsActivity?.records!.sort((b, a) =>
                              (a.kOLEngagementsR?.totalSize ?? 0).compareTo(
                                  b.kOLEngagementsR?.totalSize ?? 0));
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          return MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView(
                              children: [
                                ListTile(
                                  // title: Text("name"),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      SizedBox(
                                        width: 95,
                                        child: Center(
                                            child: Text(
                                          "Engagements",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "iMono",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 70,
                                        child: Center(
                                            child: Text(
                                          "I+V",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                  _brandsActivity!.totalSize!,
                                  (index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          leading: const CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                255, 111, 113, 112),
                                            radius: 20,
                                            child: Text(
                                              'I',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ), //Text
                                          ),
                                          title: SizedBox(
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                  "${_brandsActivity.records![index].name}"),
                                            ),
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                width: 40,
                                                child: Center(
                                                  child: Text(
                                                    "${_brandsActivity.records![index].kOLEngagementsR?.totalSize ?? "0"}",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore1C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Center(
                                                  child: Text(
                                                    _brandsActivity
                                                            .records![index]
                                                            .kOLBrandsR
                                                            ?.records![0]
                                                            .advocacyScore2C ??
                                                        "-",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          );
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
