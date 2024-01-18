import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/pages/home.dart';

class Pagetiga extends StatelessWidget {
  const Pagetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Page 3'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.offAll(HomePage());
                },
                child: Text('<<BACK'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
