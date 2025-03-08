import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  DetailView({super.key});

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
