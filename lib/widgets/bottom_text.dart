import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "© 2022 Blulava | A Division of Evolution Health Group | CONNEX v2.1.2",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "MATERIAL IS BEING PROVIDED FOR INTERNAL EDUCATIONAL AND BACKGROUND PURPOSES ONLY AND IS NOT FOR PROMOTIONAL USE.",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "DO NOT COPY, DISTRIBUTE OR SHARE WITH PHYSICIANS, STAFF OR PATIENTS.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
