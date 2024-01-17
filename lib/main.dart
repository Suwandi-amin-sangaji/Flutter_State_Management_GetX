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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final myController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print("INI AKAN DI RENDER SEMUA JIKA TIDAK ADA GETX");
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('GetX'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () {
              print("INI AKAN DI RENDER KETIKA TIDAK ADA GETX");
              return Text(
                '${myController.data.value}',
                style: TextStyle(fontSize: 55),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  myController.decrement();
                },
                child: Text('-'),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: Text('+'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs; //state yang akan selalu di panatau perubahannya.
  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}
