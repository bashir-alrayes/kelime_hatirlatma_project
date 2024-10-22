import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    /*
     if(myServices.sharedPreferences.getString("step") == "2"){
      return const RouteSettings(name: AppRoutes.homepage) ; 
     }
     
    if (myServices.sharedPreferences.getString("step") == "1") {
      return  RouteSettings(name: AppRoutes.testpage);
    }
*/
    return null;
  }
}
