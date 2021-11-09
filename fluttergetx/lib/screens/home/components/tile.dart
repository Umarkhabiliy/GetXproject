import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/inside_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/route_manager.dart';

class TileView extends StatelessWidget {
  TileView({Key? key, required this.subtitle, required this.title,this.icons})
      : super(key: key);
  String? title, subtitle,icons;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: ImageIcon(
             NetworkImage(
              icons.toString(),
            ),
            size: 36.0.sp,
            color: Colors.black,
          ),
          title: Row(
            children: [
              TextWidget(
                text: title,
                size: 18.sp,
                weight: FontWeight.w400,
              ),
              TextWidget(
                size: 16.sp,
                color: Colors.grey.withOpacity(0.7),
                text: "   $subtitle",
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
