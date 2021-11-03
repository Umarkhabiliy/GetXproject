import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/controller/get_controller.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);
  final Controller control = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 700.h,
          child: ListView.builder(itemBuilder: (ctc, index) {
            return makeLists();
          }),
        ),
        Divider(
          thickness: 3,
          color: Colors.blueGrey.shade50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "Total",
              ),
              TextWidget(
                text: "\$127.60",
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: 44.h,
            width: 360.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade400])),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: TextWidget(
                  text: "Check out",
                  size: 18.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }

  makeLists() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            height: 120.h,
            width: 100.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                "https://cdn.shopify.com/s/files/1/0011/4651/9637/products/blue2_1000x_074c70e2-fccb-4ea1-84ef-5535303c1927_250x.png?v=1606191189",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextWidget(
                  text: "Peace Skull Shirt",
                  size: 16.sp,
                  weight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextWidget(
                  text: "Black . L",
                  size: 16.sp,
                  color: Colors.grey.withOpacity(0.5),
                  weight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                      text: "\$20.90",
                      weight: FontWeight.w600,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            control.decrement();
                          },
                          child: TextWidget(
                            text: "- ",
                            size: 30.sp,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade50,
                              borderRadius: BorderRadius.circular(2)),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Obx(
                                () => TextWidget(text: "${control.count}"),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            control.increment();
                          },
                          child: TextWidget(
                            text: " +",
                            size: 25.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
