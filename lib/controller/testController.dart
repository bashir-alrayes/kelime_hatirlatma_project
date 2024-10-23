import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TestController2 extends GetxController {
  getfcm() async {
    FirebaseMessaging fcm = FirebaseMessaging.instance;
    String token = await fcm.getToken() ?? '';
    print(token);
    return token;
  }
}
