import 'package:flutter/material.dart';

class EngagementTopicLeaderBoard extends StatefulWidget {
  const EngagementTopicLeaderBoard({Key? key}) : super(key: key);

  @override
  State<EngagementTopicLeaderBoard> createState() =>
      _EngagementTopicLeaderBoardState();
}

class _EngagementTopicLeaderBoardState
    extends State<EngagementTopicLeaderBoard> {
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
                  "Engagement Topic Leaderboard",
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
                    Container(
                        // child: Row(children: [Text("ncjk")]),
                        ),
                    Container(),
                    Container(),
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
