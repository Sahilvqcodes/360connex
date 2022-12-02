import 'package:connex/Routes/app_routes.dart';
import 'package:connex/controller/testing_page.dart';
import 'package:connex/screens/home_screen.dart';
import 'package:get/get.dart';

import '../controller/binding.dart';

class Theme1AppPages {
  static const initial = Routes.HOMESCREEN;

  static final routes = [
    GetPage(
        name: Routes.HOMESCREEN,
        page: () => HomeScreen(),
        binding: MapsBinding()),
  ];
}
