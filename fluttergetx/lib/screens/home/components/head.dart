import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';

class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.2.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TabBarView(
          children: [
            ...List.generate(
              3,
              (index) => Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoSearchTextField(
                        placeholderStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                        backgroundColor: Colors.white.withOpacity(0.3),
                        suffixIcon: const Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                        placeholder: "What are you looking for?",
                      ),
                    ),
                    const Spacer(flex: 2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Recommendations",
                            color: Colors.grey.withOpacity(0.7),
                            size: 20.sp,
                            weight: FontWeight.w500,
                          ),
                          TextWidget(
                            text: "Women Blue Denim",
                            color: Colors.white,
                            size: 30.sp,
                            weight: FontWeight.w700,
                          ),
                          Row(
                            children: [
                              TextWidget(
                                text: "\$30.00",
                                color: Colors.blue.withOpacity(0.9),
                                size: 28.sp,
                                weight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 2.4.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://sydneylashandbrow.com/wp-content/uploads/2020/12/neve-web-design-studio-03.1.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
