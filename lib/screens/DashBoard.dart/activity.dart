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
        height: MediaQuery.of(context).size.height * 0.52,
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
                      Expanded(child: const Text('Leukenia-Lymphoma')),
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
                      Expanded(child: const Text('Commercial Engagements')),
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
                      Expanded(child: const Text('Medical Engagements')),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.37,
                child: TabBarView(
                  children: <Widget>[
                    MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: ListView(
                        children: [
                          ListTile(
                            // title: Text("name"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("data1"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data2"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data3"),
                              ],
                            ),
                          ),
                          ...List.generate(
                            10,
                            (index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 111, 113, 112),
                                      radius: 20,
                                      child: Text(
                                        'I',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ), //Text
                                    ),
                                    title: Text("Leukenia-Lymphoma"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text("data1"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data2"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data3"),
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
                    MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: ListView(
                        children: [
                          ListTile(
                            // title: Text("name"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("data1"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data2"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data3"),
                              ],
                            ),
                          ),
                          ...List.generate(
                            5,
                            (index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 111, 113, 112),
                                      radius: 20,
                                      child: Text(
                                        'I',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ), //Text
                                    ),
                                    title: Text("Commercial Engagements"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text("data1"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data2"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data3"),
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
                    MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: ListView(
                        children: [
                          ListTile(
                            // title: Text("name"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("data1"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data2"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("data3"),
                              ],
                            ),
                          ),
                          ...List.generate(
                            5,
                            (index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 111, 113, 112),
                                      radius: 20,
                                      child: Text(
                                        'I',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ), //Text
                                    ),
                                    title: Text("Medical Engagements"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text("data1"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data2"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("data3"),
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
