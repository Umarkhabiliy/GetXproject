import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/controller.dart';
import 'package:fluttergetx/screens/listpage/components/controller.dart';
import 'package:fluttergetx/screens/listpage/list_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);
//  var controller = Get.put(ButtonController());
  @override
  Widget build(BuildContext context) {
    // var bb = Get.arguments['info'];
    // var npa = Get.arguments['rasm'];
    // var a = Get.arguments['bnt'];
    return Center(
      child: Container(
              height: 44.h,
              width: 360.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade200, Colors.blue.shade400])),
              child: GestureDetector(
                // onTap: ()  {
                //   // await getSnap.setProduct(
                //   //     valueName: npa[1].toString(),
                //   //     valuePrice: npa[2].toString());
                //   // valueColor: bb.toString(),
                //   // valueSize: a.toString());

                // },
                onTap: () {
                  Get.to(ListPage(),);
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
