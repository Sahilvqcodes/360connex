import 'package:connex/controller/home_controller.dart';
import 'package:connex/screens/KolSearch/kol_filters/brands3.dart';
import 'package:connex/screens/KolSearch/kol_filters/filters_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';

import 'brands1.dart';
import 'brands2.dart';

class Filters extends GetView<StoreController> {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          size: 35,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'KOL Filters',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF05357c),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "States: ",
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        // DropDownMultiSelect comes from multiselect
                        child: DropDownMultiSelect(
                          onChanged: (List<String> x) {},
                          options: filtersConst.STATE_CODES,
                          selectedValues: [],
                          whenEmpty: 'Select',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Regions:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        // DropDownMultiSelect comes from multiselect
                        child: DropDownMultiSelect(
                          onChanged: (List<String> x) {},
                          options: filtersConst.REGION,
                          selectedValues: [],
                          whenEmpty: 'Select',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Classifications:",
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        // DropDownMultiSelect comes from multiselect
                        child: DropDownMultiSelect(
                          onChanged: (List<String> x) {},
                          options: filtersConst.CLASSIFICATIONS,
                          selectedValues: [],
                          whenEmpty: 'Select',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: controller.myValue.value,
                        activeColor: Theme.of(context).colorScheme.primary,
                        onChanged: (bool? newValue) {
                          controller.upateMyValue();
                        },
                      ),
                      const Text(
                        "My Favortites",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 101, 99, 99),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                controller.BrandsName.contains(filtersConst.BRAND1)
                    ? const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Brands1Filters(),
                      )
                    : Container(),
                controller.BrandsName.contains(filtersConst.BRAND2)
                    ? const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Brands2Filters(),
                      )
                    : Container(),
                controller.BrandsName.contains(filtersConst.BRAND3)
                    ? const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Brands3Filters(),
                      )
                    : Container(),
                Container(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
