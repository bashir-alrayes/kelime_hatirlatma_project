import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/controller/home_controller.dart';
import 'package:kelime_hatirlatma_project/core/utils/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => SafeArea(
              child: Scaffold(
                // appBar: AppBar(),
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16.0),
                      bottom: Radius.circular(16),
                    ),
                    child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      onTap: (val) {
                        controller.changepage(val);
                      },
                      backgroundColor: AppColors.bottomNav,
                      iconSize: 20,
                      currentIndex: controller.currentpage,
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.black,
                      // showUnselectedLabels: false,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.house),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(FontAwesomeIcons.list),
                          label: "",
                        ),
                      ],
                    ),
                  ),
                ),
                body: controller.listpage.elementAt(controller.currentpage),
              ),
            ));
  }
}
