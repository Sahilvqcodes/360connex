import 'package:connex/screens/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();

  // //2
  // await windowManager.setMinimumSize(const Size(512, 575));

  runApp(
    GetMaterialApp(
      title: "",
      initialRoute: Theme1AppPages.initial,
      getPages: Theme1AppPages.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF05357c),
          // secondary: const Color(0xFFFFC107),
        ),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Color(0xFF05357c)),
//       home: HomeScreen(),
//     );
//   }

