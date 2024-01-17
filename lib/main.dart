import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text("SNAPBAR GETX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text("SNACKBAR"),
            //     action: SnackBarAction(
            //       label: "CANCEL",
            //       onPressed: () {},
            //     ),
            //   ),
            // );WS
            Get.snackbar(
              "Notifikasi",
              "INI ADALAH SNACKBAR GETXS",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
            );
          },
          child: Text("CLICK ME"),
        ),
      ),
    );
  }
}
