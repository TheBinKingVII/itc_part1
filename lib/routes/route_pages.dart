import 'package:get/get.dart';
import 'package:itc_part1/routes/route_names.dart';
import 'package:itc_part1/views/detail_view.dart';
import 'package:itc_part1/views/home_view.dart';
import 'package:itc_part1/views/input_view.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(name: RouteNames.home, page: () => HomeView()),
    GetPage(name: RouteNames.hitung, page: () => DetailView()),
    GetPage(name: RouteNames.input, page: ()=> InputView()),
  ];
}
