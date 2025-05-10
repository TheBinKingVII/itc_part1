import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:itc_part1/models/user_model.dart';
import 'package:itc_part1/routes/route_names.dart';

class HomeController extends GetxController {
   RxList<UserModel> getUserData = <UserModel>[].obs;

   void handleListtap(String namaList){
      Get.toNamed(RouteNames.hitung, arguments: {'nama': namaList});
   }
   void goToInputPage() {
     Get.toNamed(RouteNames.input);
   }

   Future<void> getData() async {

     String baseUrl =  "https://itc-meet-2-default-rtdb.asia-southeast1.firebasedatabase.app/";
     Uri uri = Uri.parse('$baseUrl/User.json');
     final response = await http.get(uri);
      if (response.statusCode == 200) {
        final data = response.body;
        var userData = jsonDecode(data);
        // var userData = UserModel.fromJson(data as Map<String, dynamic>);
        log("Data: $data");
        userData.forEach((key, value) {
          UserModel user = UserModel.fromJson(value);
          getUserData.add(user);
        });
      } else {
        Get.snackbar(
          "Error",
          "Failed to fetch data",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
   }

   @override
  void onInit() {
    super.onInit();
    getData();
    print("Page ditampilkan");
  }
}