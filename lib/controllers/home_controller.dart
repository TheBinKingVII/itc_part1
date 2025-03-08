import 'package:get/get.dart';
import 'package:itc_part1/models/user_model.dart';
import 'package:itc_part1/routes/route_names.dart';

class HomeController extends GetxController {
   List<UserModel> getUserData () => UserModel.data;

   void handleListtap(String namaList){
    Get.toNamed(RouteNames.hitung, arguments: {'nama': namaList});
   }

   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Page ditampilkan");
  }
}