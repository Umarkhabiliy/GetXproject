import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/inside_head.dart';
import 'package:fluttergetx/screens/insidepage/inside_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/route_manager.dart';

class TileView extends StatelessWidget {
  const TileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: ImageIcon(
            const NetworkImage(
              "https://cdn1.iconfinder.com/data/icons/user-outline-icons-set/144/User_Female-512.png",
            ),
            size: 36.0.sp,
            color: Colors.black,
          ),
          title: Row(
            children: [
              TextWidget(
                text: "Woman   ",
                size: 18.sp,
                weight: FontWeight.w400,
              ),
              TextWidget(
                size: 16.sp,
                color: Colors.grey.withOpacity(0.7),
                text: "728 items",
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () => Get.to(InsidePage()),
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )),
    );
  }
}
