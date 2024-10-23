import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kelime_hatirlatma_project/core/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      fontSize: 20.sp,
                      color: Color(0xffFFF6F1),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Listeleme Sayfası",
                  style: TextStyle(fontSize: 15.sp),
                ),
              ],
            )),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Bugünün güncel 10 kelimesi:",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                              "Kelime ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
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
  }
}
