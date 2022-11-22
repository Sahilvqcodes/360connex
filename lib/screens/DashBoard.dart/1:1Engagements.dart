import 'package:flutter/material.dart';

class MeetingEngagements extends StatefulWidget {
  const MeetingEngagements({Key? key}) : super(key: key);

  @override
  State<MeetingEngagements> createState() => _MeetingEngagementsState();
}

class _MeetingEngagementsState extends State<MeetingEngagements> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.58,
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
                  "1:1 Engagements",
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
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: TabBarView(
                      children: <Widget>[
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "No Meeting Found!",
                                style: TextStyle(
                                  color: Color(0xFF05357c),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView(
                            children: [
                              ...List.generate(
                                5,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Friday September 29",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
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
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Expanded(
                                                child: Text(
                                              'Name',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
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
                        ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
