import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/data/datasource/remote/deviceToken.dart';

class TestController2 extends GetxController {
  DeviceToken deviceToken = DeviceToken(Get.find());

  Future<String> getfcm() async {
    FirebaseMessaging fcm = FirebaseMessaging.instance;
    String token = await fcm.getToken() ?? '';
    print("Token device is: $token");
    return token;
  }

  Future<void> PostData() async {
    String token = await getfcm();

    var response = await deviceToken.postdata(token);
    //print("Token response is: $response ");
  }

  @override
  void onInit() {
    PostData();
  }
}
