import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Apis/Dashboard/models/brandList_model.dart';
import '../Apis/Dashboard/models/congressList_model.dart';
import '../Apis/KolSearch/models/kol_search_Data.dart';

class StoreController extends GetxController {
  var selectedItems = <Records>[].obs;
  var congressItems = <CongressRecords>[].obs;
  var congress = <CongressRecords>[].obs;
  var brands = <Records>[].obs;
  var brandsFocus = <Records>[].obs;
  var myValue = false.obs;
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
  var pageNo = 1.obs;
  var dropdownvalue = 'Last Name'.obs;
  RxDouble navSize = 0.0.obs;
  var statesList = ["a", "b", "c"];
  var statesSelected = "a".obs;
  var sortByAlphabaticaly = false.obs;

  var KolDataList = <RecordsData>[].obs;
  var kolData = KolSearcDataModel().obs;
  updateSortByAlphabaticaly() {
    sortByAlphabaticaly.toggle();
  }

  upateMyValue() {
    myValue.toggle();
  }
}
