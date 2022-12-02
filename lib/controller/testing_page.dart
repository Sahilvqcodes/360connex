import 'package:connex/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestingPage extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("${controller.selectedItems}"),
      ),
    );
  }
}
