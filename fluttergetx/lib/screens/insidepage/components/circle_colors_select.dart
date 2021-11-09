import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/button_widget.dart';
import 'package:fluttergetx/screens/insidepage/controller.dart';
import 'package:fluttergetx/screens/insidepage/inside_page.dart';
import 'package:get/get.dart';

class CircleColorsSelect extends StatelessWidget {
  const CircleColorsSelect({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonController>(
        init: ButtonController(),
        builder: (getController) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Row(
              children: [
                ...List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      getController.cicrleClicked(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2,
                                color: getController.colorsCircle[index])),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundColor: circleColors[index],
                            radius: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
