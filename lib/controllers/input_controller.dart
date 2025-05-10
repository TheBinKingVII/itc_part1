import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class InputController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  String name = "";
  String imageUrl = "";

  void inputData() {
    if (nameController.text.isEmpty || imageUrlController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Data tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    name = nameController.text;
    imageUrl = imageUrlController.text;
    log("Nama: $name");
    log("Image URL: $imageUrl");

    String baseUrl =
        "https://itc-meet-2-default-rtdb.asia-southeast1.firebasedatabase.app/";
    Uri uri = Uri.parse('$baseUrl/User.json');

    Map<String, dynamic> inputData = {
      "nama": name,
      "imgUrl": imageUrl,
    };
    http
        .post(
      uri,
      body: jsonEncode(inputData),
    ).then((response) {
      if (response.statusCode == 200) {
        Get.snackbar(
          "Input Berhasil",
          "Data berhasil ditambahkan",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        nameController.clear();
        imageUrlController.clear();
        Get.back();
      }
    });

  }

  @override
  void onInit() {
    super.onInit();
    print("Page ditampilkan");
  }
}
