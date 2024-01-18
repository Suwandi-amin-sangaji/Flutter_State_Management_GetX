import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_Controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     '${homeC.data}',
            //     style: TextStyle(
            //       fontSize: 50,
            //     ),
            //   ),
            // ),

            GetBuilder<HomeController>(
              builder: (controller) => Text(
                '${homeC.data}',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    homeC.tambahData();
                  },
                  child: Text('Tambah Data'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // homeC.tambahData();
                    homeC.refreshData();
                  },
                  child: Text('Refresh Data Dulu'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
