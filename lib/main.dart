import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/pages/page_1.dart';
import 'package:state_management_getx/pages/page_2.dart';
import 'package:state_management_getx/pages/page_3.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // routes: {
      //   'home': (context) => HomePage(),
      //   'page_satu': (context) => PageSatu(),
      //   'page_dua': (context) => PageDua(),
      //   'page_tiga': (context) => Pagetiga(),
      // },
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/page_satu', page: () => PageSatu()),
        GetPage(name: '/page_dua', page: () => PageDua()),
        GetPage(name: '/page_tiga', page: () => Pagetiga()),
      ],
    );
  }
}
