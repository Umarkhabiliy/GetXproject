import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';

class HorizontalLists extends StatelessWidget {
  const HorizontalLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 14.w,
                childAspectRatio: 1.2.w),
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(borderRadius: BorderRadius.circular(8),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://ih1.redbubble.net/image.1060739533.9977/ssrco,mhoodie,womens,101010:01c5ca27c6,front,tall_three_quarter,x1000-bg,f8f8f8.1u1.jpg"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          // child: Image.network(
                          //     "https://ih1.redbubble.net/image.1060739533.9977/ssrco,mhoodie,womens,101010:01c5ca27c6,front,tall_three_quarter,x1000-bg,f8f8f8.1u1.jpg",scale: 2,fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        text: "  Flutter hoodie",
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
                            text: "\$19.99  ",
                            size: 18.sp,
                            weight: FontWeight.w900,
                          ),
                          TextWidget(text: "Sale")
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
