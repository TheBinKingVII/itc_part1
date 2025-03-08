import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HitungView extends StatelessWidget {
  HitungView({super.key});

  final args = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        args['nama'],
      ),
    );
  }
}
