import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/components/inside_head.dart';
import 'package:fluttergetx/screens/listpage/list_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/route_manager.dart';

class InsidePage extends StatelessWidget {
  InsidePage({Key? key, this.tabController}) : super(key: key);
  TabController? tabController;
  List<String> s = ["S", "M", "L", "XL", "XXL"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InsideHeaders(
                tabController: tabController,
              ),
              makeTexts(),
              makeColors(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: TextWidget(text: "Size"),
              ),
              makeRow(),
              Center(
                child: Container(
                  height: 44.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade200,
                        Colors.blue.shade400
                      ])),
                  child: GestureDetector(
                    onTap: () {
                      Get.to( ListPage());
                    },
                    child: Center(
                      child: TextWidget(
                        text: "Add to cart",
                        size: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  makeTexts() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextWidget(
              text: "Eywa Hoodie",
              size: 36.sp,
              weight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextWidget(
                  text: "\$30.99  ",
                  size: 24.sp,
                  weight: FontWeight.w500,
                ),
                TextWidget(
                  color: Colors.grey.withOpacity(0.5),
                  size: 20.sp,
                  text: "\$44.99",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: TextWidget(
              text: "Colour",
            ),
          )
        ],
      ),
    );
  }

  makeColors() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: Row(
        children: [
          ...List.generate(
              4,
              (index) => Container(
                  width: 24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue.shade100,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade500,
                      radius: 12,
                    ),
                  )))
        ],
      ),
    );
  }

  makeRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blueGrey.shade50,
        ),
        height: 40.h,
        child: TabBar(
          unselectedLabelStyle: TextStyle(color: Colors.blueGrey.shade300),
          indicatorPadding: EdgeInsets.symmetric(horizontal: 20.w),
          indicatorWeight: 2,
          unselectedLabelColor: Colors.blueGrey.shade100,
          indicator: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(2)),
          tabs: [
            ...List.generate(
              5,
              (index) => Tab(
                text: s[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
