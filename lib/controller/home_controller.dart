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
