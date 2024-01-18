import 'package:flutter/material.dart';
import 'package:state_management_getx/pages/page_1.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/pages/page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageSatu(),
                ),
              );
            },
            child: Text('Page 1'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => PageSatu(),
              //   ),
              // );
              Get.to(PageDua());
              // Get.off(PageDua());
            },
            child: Text('Page 2'),
          ),
        ],
      ),
    );
  }
}
