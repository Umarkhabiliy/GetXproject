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
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 120.w,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.network(
                                  pictures[index]['hoodei'].toString(),
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width.w,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextWidget(
                                  text: namee[index]['nam'].toString(),
                                  color: Colors.grey.withOpacity(0.5),
                                  size: 16.sp,
                                  weight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    TextWidget(
                                      text: pricee[index]['pri'].toString(),
                                      size: 18.sp,
                                      weight: FontWeight.w700,
                                    ),
                                    TextWidget(
                                      text: "  Sale",
                                      size: 14,
                                      color: Colors.grey.shade400,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(InsidePage(), arguments: {
                        "rasm": [
                          pictures[index]['hoodei'].toString(),
                          namee[index]['nam'].toString(),
                          pricee[index]['pri'].toString(),
                        ],
                      });
                    });
              })),
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
  {"pri": "12.50\$"},
  {"pri": "54.99\$"},
  {"pri": "100 \$"},
];
