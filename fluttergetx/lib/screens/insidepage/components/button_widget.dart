import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/circle_colors_select.dart';

import 'package:fluttergetx/screens/listpage/list_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, required this.allInfo}) : super(key: key);

  Map<String, dynamic> allInfo;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 44.h,
      width: 360.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue.shade400])),
      child: InkWell(
        onTap: () {
          Get.to(ListPage());
          lst.add(allInfo);
        },
        child: Center(
          child: TextWidget(
            text: "Add to cart",
            size: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
