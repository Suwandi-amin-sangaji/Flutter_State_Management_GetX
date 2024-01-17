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
        title: Text("DIALOG GETX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Hello",
              middleText: "Ini Adalah Contoh Pembuatan Dialog menggunakan Getx",
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("OK"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                )
              ],
            );
          },
          child: Text("CLICK ME"),
        ),
      ),
    );
  }
}
