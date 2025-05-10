import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itc_part1/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.goToInputPage();
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
          child: Center(
        child: Obx(
          () => controller.getUserData.isEmpty
              ? CircularProgressIndicator()
              : ListView(
                  shrinkWrap: true,
                  children: List.generate(controller.getUserData.length, (i) {
                    return GestureDetector(
                      onTap: () {
                        controller
                            .handleListtap(controller.getUserData[i].nama);
                      },
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(75),
                            child: Image.network(
                              controller.getUserData[i].imgUrl,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text(controller.getUserData[i].nama),
                        ],
                      ),
                    );
                  }),
                ),
        ),
      )),
    );
  }
}
