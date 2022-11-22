import 'package:flutter/material.dart';

class KolEngagemetTracking extends StatelessWidget {
  const KolEngagemetTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 1.10,
        // height: 200,
        // width: 300,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Overall KOL Engagment Tracking",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.black26,
              endIndent: 10,
              indent: 10,
              thickness: 1.0,
            ),
          ],
        ));
  }
}
