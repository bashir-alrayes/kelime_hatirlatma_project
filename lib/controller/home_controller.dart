import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/core/api/statusrequest.dart';
import 'package:kelime_hatirlatma_project/view/screen/homeScreens/homepage.dart';
import 'package:kelime_hatirlatma_project/view/screen/homeScreens/listing_page.dart';

abstract class HomeController extends GetxController {
  getListPage();
  changepage(int i);
}

class HomeControllerImp extends HomeController {
  int currentpage = 0;
  List<Widget> listpage = [const HomePage(), const ListingPage()];

  List<dynamic> data = [];
  List<String> desktopImageUrls = [];

  late StatusRequest statusRequest;

  int currentIndex = 0;

/*
  GetData() async {
    statusRequest = StatusRequest.loading;
    var response = await bannerImagesData.getdata();
    // print("My response is: $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      var resultData = response['result'];
      data.addAll(resultData);

      for (var item in resultData) {
        if (item['phone_img'] != null && item['phone_img']['url'] != null) {
          desktopImageUrls.add(item['phone_img']['url']);
        }
      }

      if (desktopImageUrls.isNotEmpty) {
        startTimer(Duration(seconds: 5));
      }
      // Print desktop image URLs for debugging
      //print("Desktop Image URLs: $desktopImageUrls");
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }
*/
  @override
  getListPage() {
    return listpage;
  }

  @override
  changepage(int i) {
    currentpage = i;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    // GetData();
  }
}
