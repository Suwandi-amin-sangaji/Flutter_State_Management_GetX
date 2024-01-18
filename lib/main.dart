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
        title: Text("BOTTOM SHEET GETX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 200,
            //     color: Colors.amber,
            //     child: ListView(
            //       children: [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("HOME"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.person),
            //           title: Text("PROFILE"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text("SETTINGS"),
            //         ),
            //       ],
            //     ),
            //   ),
            // );

            Get.bottomSheet(
              Container(
                  height: 200,
                  color: Colors.amber,
                  child: ListView(children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("HOME"),
                    )
                  ])),
            );
          },
          child: Text("BOTTOM SHEET"),
        ),
      ),
    );
  }
}
