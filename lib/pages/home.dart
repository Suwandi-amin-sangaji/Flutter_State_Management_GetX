import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_Controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  '${homeC.data}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row( 
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.increment();
                    },
                    child: Text('+'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeC.decrement();
                    },
                    child: Text('-'),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
