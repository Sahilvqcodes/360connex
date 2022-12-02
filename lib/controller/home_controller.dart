import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/brandList_model.dart';
import '../Models/congressList_model.dart';

class StoreController extends GetxController {
  var selectedItems = <Records>[].obs;
  var congressItems = <CongressRecords>[].obs;
  var congress = <CongressRecords>[].obs;
  var brands = <Records>[].obs;
  var brandsFocus = <Records>[].obs;
  var EngagementsName = [
    "Total Engagements",
    "Commercial Engagements",
    "Medical Engagemnts",
  ].obs;
  var BrandsName = [
    "Leukemia-Lymphoma",
    "MM Portfolio",
    "Prostate Franchise",
  ].obs;
}
