import 'package:flutter/material.dart';

import 'kol_search.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.zero,
      width: size.width * 0.7,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 190,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 35,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.black54,
                      //  endIndent: 10,
                      // indent: 10,
                      thickness: 1.0,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF05357c)),
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.black54,
                      //  endIndent: 10,
                      // indent: 10,
                      thickness: 1.0,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Schedule/Information',
                style: TextStyle(
                    color: Color(0xFF3D3D3D),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'KOL Search',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KolSearch()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Calender',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Institutions',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Reports',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              height: 10.0,
              color: Colors.black54,
              thickness: 1.0,
            ),
            ListTile(
              title: const Text(
                'Resources/Social/Other',
                style: TextStyle(
                    color: Color(0xFF3D3D3D),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Get.offAndToNamed(Routes.HOMEPAGE);
              },
            ),
            ListTile(
              title: const Text(
                'Social Media',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Resources',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            const Divider(
              height: 10.0,
              color: Colors.black54,
              //  endIndent: 10,
              // indent: 10,
              thickness: 1.0,
            ),
            ListTile(
              title: const Text(
                'Supports',
                style: TextStyle(
                  color: Color(0xFF05357c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            TextButton(
              onPressed: () async {},
              child: const Text(
                "Log Out",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF05357c),
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
