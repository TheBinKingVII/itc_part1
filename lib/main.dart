import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itc_part1/routes/route_names.dart';
import 'package:itc_part1/routes/route_pages.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RoutePages.pages,
      initialRoute: RouteNames.home,
    );
  }
}
