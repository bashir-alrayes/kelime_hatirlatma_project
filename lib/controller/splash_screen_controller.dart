import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/homepage');
    });
    super.onInit();
  }
}