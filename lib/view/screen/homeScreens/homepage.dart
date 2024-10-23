import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/controller/testController.dart';
import 'package:kelime_hatirlatma_project/core/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void _showInputDialog(BuildContext context) async {
      await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                // padding: const EdgeInsets.all(50).r,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 10)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20).r,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25)),
                        width: 500,

                        /// height: 50.h,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: AppColors.bottomNav,
                                  child: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: AppColors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "Bamboozle",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.bottomNav),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25)),
                        // width: 500,
                        height: 150.h,

                        /// height: 50.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Kandırmak, aldatmak",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    //fontWeight: FontWeight.bold,
                                    color: AppColors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
      );
    }

    return GetBuilder(
        init: TestController2(),
        builder: (controller) {
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                  decoration: const BoxDecoration(
                    color: AppColors.bottomNav,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                  ),
                  height: 100.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Günlük Kelime",
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Listeleme Sayfası",
                        style:
                            TextStyle(fontSize: 15.sp, color: AppColors.black),
                      ),
                    ],
                  )),
              SizedBox(
                height: 5.h,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Bugünün güncel 10 kelimesi:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      controller.getfcm();

                                      // print("merhaba");
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      getfcm() async {
                                        FirebaseMessaging fcm =
                                            FirebaseMessaging.instance;
                                        String token =
                                            await fcm.getToken() ?? '';
                                        print(token);
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 320.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFF6F1)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Kelime ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      _showInputDialog(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.eye))
                              ],
                            )),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
