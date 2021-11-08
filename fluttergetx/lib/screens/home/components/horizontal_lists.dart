import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/insidepage/inside_page.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

class HorizontalLists extends StatelessWidget {
  const HorizontalLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 14.w,
                childAspectRatio: 1.2.w),
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () {
                  debugPrint('bosildi $index');
                  Get.to(InsidePage(), arguments: {
                    "rasm": [pictures[index]['hoodei'].toString(),namee[index]['nam'].toString(), pricee[index]['pri'].toString(),],
                    
                    
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              pictures[index]['hoodei'].toString(),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          text: namee[index]['nam'].toString(),
                          color: Colors.grey.withOpacity(0.8),
                          size: 16.sp,
                          weight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            TextWidget(
                              text: pricee[index]['pri'].toString(),
                              size: 18.sp,
                              weight: FontWeight.w900,
                            ),
                            TextWidget(text: "Sale")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

var pictures = [
  {
    "hoodei":
        "https://images.timberland.com/is/image/timberland/A12CR010-HERO?\$PDP-FULL-IMAGE\$"
  },
  {
    'hoodei':
        "https://media.tractorsupply.com/is/image/TractorSupplyCompany/1113817?\$456\$"
  },
  {
    'hoodei':
        "https://www.forever21.com/dw/image/v2/BFKH_PRD/on/demandware.static/-/Sites-f21-master-catalog/default/dw3c485f95/1_front_750/00438407-02.jpg?sw=300&sh=450"
  }
];

var namee = [
  {"nam": "Black"},
  {"nam": "Grey"},
  {"nam": "Blue"},
];
var pricee = [
  {"pri": "12som"},
  {"pri": "54som"},
  {"pri": "100som"},
];
