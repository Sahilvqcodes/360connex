import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/brandList_model.dart';

class StoreController extends GetxController {
  RxList<Records> _selectedItems = RxList<Records>([]);
}
