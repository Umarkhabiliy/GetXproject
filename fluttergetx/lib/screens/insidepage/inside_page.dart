import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/button_widget.dart';
import 'package:fluttergetx/screens/insidepage/components/circle_colors_select.dart';
import 'package:fluttergetx/screens/insidepage/components/inside_head.dart';
import 'package:fluttergetx/screens/insidepage/components/size_butons.dart';
import 'package:fluttergetx/screens/insidepage/controller.dart';
import 'package:fluttergetx/screens/listpage/components/controller.dart';
import 'package:fluttergetx/screens/listpage/list_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class InsidePage extends StatelessWidget {
  InsidePage({Key? key, this.tabController}) : super(key: key);
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    var npa = Get.arguments['rasm'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InsideHeaders(tabController: tabController),
            makeTexts(npa[1].toString(), npa[2].toString()),
            
            const CircleColorsSelect(),
            textSizeWidget(),
            SizedBox(height: 8.h),
            const SizesButton(),
            SizedBox(height: 16.h),
            const ButtonWidget(),
            
            
          ],
        ),
      ),
    );
  }

  Padding textSizeWidget() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: TextWidget(
          text: "Size",
          size: 16.sp,
          color: Colors.black45,
          weight: FontWeight.w500,
        ));
  }

  makeTexts(textname, price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextWidget(
              text: textname,
              size: 36.sp,
              weight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextWidget(
                  text: price,
                  size: 24.sp,
                  color: Colors.black87,
                  weight: FontWeight.w500,
                ),
                const SizedBox(width: 8),
                TextWidget(
                  color: Colors.grey.withOpacity(0.5),
                  size: 20.sp,
                  text: "\$44.99",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
            child: TextWidget(
              size: 16.sp,
              text: "Colour",
              color: Colors.black45,
              weight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

List<String> s = ["S", "M", "L", "XL", "XXL"];
List<Color> circleColors = [
  Colors.grey.shade300,
  Colors.black87,
  Colors.amber.shade400,
  Colors.blue.shade600
];
