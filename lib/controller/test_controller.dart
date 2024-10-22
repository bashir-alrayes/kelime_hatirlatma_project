import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/core/api/hanlingdata_controller.dart';
import 'package:kelime_hatirlatma_project/core/api/statusrequest.dart';
import 'package:kelime_hatirlatma_project/data/datasource/remote/testData.dart';

abstract class TestController extends GetxController {
  PostData();
}

class TestControllerImp extends TestController {
  TestData testData = TestData(Get.find());

  List<dynamic> data = [];
  Map<String, dynamic>? customer;

  late StatusRequest statusRequest;

  GlobalKey<FormState> formstate = GlobalKey();
  TextEditingController transaction_ID = TextEditingController();
  TextEditingController LastName = TextEditingController();

  PostData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.postdata(transaction_ID.text, LastName.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['data'] != null && response['data']['result'] != null) {
        data.addAll(response['data']['result']);
        if (data.isNotEmpty && data[0]['customer'] != null) {
          customer = data[0]['customer'] as Map<String, dynamic>;
          // print("Customer: $customer");
        }
        // print("success!! ${response}");
        // Get.toNamed("transcation2");
      }
      update();
    } else {
      statusRequest = StatusRequest.failure;
      update();
    }
  }

  Map<String, dynamic>? getCustomer() {
    return customer;
  }
}
