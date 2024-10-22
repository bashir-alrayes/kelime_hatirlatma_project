import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kelime_hatirlatma_project/core/api/statusrequest.dart';
import 'package:kelime_hatirlatma_project/core/utils/app_colors.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: SpinKitCircle(
              color: AppColors.primaryColor,
              size: 50.0,
            ),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? const Center(child: Text("فشل غير متصل بالإنترنت"))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("فشل الخدمة"))
                : statusRequest == StatusRequest.failure
                    ? const Center(child: Text("لايوجد بيانات"))
                    : widget;
  }
}
