import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../custom_search.dart';

class KolSearch extends StatefulWidget {
  const KolSearch({Key? key}) : super(key: key);

  @override
  State<KolSearch> createState() => _KolSearchState();
}

class _KolSearchState extends State<KolSearch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(width: 5.0,),
                const SizedBox(height: 80),
                const Text(
                  "360",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                const SizedBox(width: 5.0),
                const Text(
                  "CONNEX",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20.0),
                Container(
                  height: 25.0,
                  width: 160,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "search",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        toolbarHeight: 80,
        backgroundColor: Color(0xFF05357c),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 2.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF05357c),
            ),
            const SizedBox(height: 20),
            const Text(
              'KOL Search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _searchBar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF05357c)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      'Filters',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF05357c)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF05357c)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFF05357c)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Add Engagements',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 50),
              child: Text(
                'Applied Filters:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              height: 10.0,
              color: Color(0xFF05357c),
              thickness: 4.0,
            ),
            const SizedBox(height: 10),
            Container(
              width: size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Showing 251 results',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(width: 20),
                    const Text(
                      'Short By',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF05357c)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        //color: Color(0xFF05357c)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Last name',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Color(0xFF05357c),
                        size: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_upward,
                        color: Color(0xFF05357c),
                        size: 20,
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "assets/images/Jeremy.Abramson_IMB.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Inhye Ahn, MD",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF05357c)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text("Physician"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Specialty"),
                Text("Classification"),
                Text("Engagements"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "assets/images/Inhye.Ahn_IMB.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Inhye Ahn, MD",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF05357c)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text("Physician"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Specialty"),
                Text("Classification"),
                Text("Engagements"),
              ],
            )
          ],
        ),
      ),
    );
  }

  _searchBar() {
    return SizedBox(
      height: 50,
      width: 350,
      child: TextField(
          onTap: () {
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate());
          },
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              border: OutlineInputBorder(),
              hintText: "search",
              suffixIcon: IconButton(
                color: Color(0xFF05357c),
                onPressed: () {},
                icon: Icon(Icons.search),
              ))),
    );
  }
}