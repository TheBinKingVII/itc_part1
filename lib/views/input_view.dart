import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itc_part1/controllers/input_controller.dart';

class InputView extends StatelessWidget {
   InputView({super.key});
  final InputController controller = Get.put(InputController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              TextField(
                controller: controller.nameController,
                decoration: const InputDecoration(
                  label: Text("Nama"),
                ),
              ),
              TextField(
                controller: controller.imageUrlController,
                decoration: const InputDecoration(
                  label: Text("Link Gambar"),
                ),
              ),
              ElevatedButton(onPressed: (){
                controller.inputData();
                // Get.back();
              }, child: const Text("Insert Data")),
            ],
          ),
        ),
      )
    );
  }
}