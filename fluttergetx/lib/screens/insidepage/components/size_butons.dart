import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/button_widget.dart';
import 'package:fluttergetx/screens/insidepage/controller.dart';
import 'package:fluttergetx/screens/insidepage/inside_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SizesButton extends StatelessWidget {
  const SizesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<ButtonController>(
          init: ButtonController(),
          builder: (getButtonController) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blueGrey.shade50),
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: () {
                          getButtonController.buttonClicked(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: getButtonController.colors[index],
                              borderRadius: BorderRadius.circular(2)),
                          height: 30,
                          width: 40,
                          child: Center(
                            child: Text(
                              s[index].toString(),
                              style: TextStyle(
                                  color:
                                      index == getButtonController.selectedIndex
                                          ? Colors.white
                                          : Colors.blueGrey.shade300),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
