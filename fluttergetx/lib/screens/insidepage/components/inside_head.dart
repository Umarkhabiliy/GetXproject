import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';

class InsideHeaders extends StatelessWidget {
  InsideHeaders({Key? key, this.tabController}) : super(key: key);
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.h,
        child: SafeArea(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: TabBarView(
              controller: tabController,
              children: [
                ...List.generate(
                  3,
                  (index) => Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BackButton(
                                  onPressed: () {},
                                ),
                                Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    Positioned(
                                      right: 6.w,
                                      top: 10.h,
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.blue.shade300,
                                        child: TextWidget(
                                            text: "3", color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                        const Spacer(
                          flex: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            const  TabPageSelector(
                                color: Colors.white,
                              ),
                              TabPageSelectorIndicator(
                                  backgroundColor: Colors.blue.shade100,
                                  borderColor: Colors.transparent,
                                  size: 12)
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/sd.webp",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
