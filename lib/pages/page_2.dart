import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/pages/page_3.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Page 2'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(Pagetiga());
                },
                child: Text('NEXT'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
