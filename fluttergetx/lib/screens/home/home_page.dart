import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/home/components/head.dart';
import 'package:fluttergetx/screens/home/components/horizontal_lists.dart';
import 'package:fluttergetx/screens/home/components/tile.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
// import 'package:fluttergetx/screens/controller/get_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    ScreenType.Phone;
    Size size = MediaQuery.of(context).size;
    ScreenUtil.init(
        BoxConstraints(maxWidth: size.width, maxHeight: size.height),
        designSize: const Size(375, 840),
        orientation: Orientation.portrait);
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: const Text("GetX"),
      // ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const Headers(),
                TabPageSelector(
                  color: Colors.blueGrey.withOpacity(0.4),
                  indicatorSize: 12,
                  controller: tabController,
                ),
                makeRowText("Trending"),
                const HorizontalLists(),
                makeRowText("Categories"),
                ListView.builder(physics:const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (ctx, index) {
                      return const TileView();
                    }),
                ElevatedButton(
                  onPressed: () async {},
                  child: const Text("Click Me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  makeRowText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: text,
            size: 18.sp,
            color: Colors.black,
            weight: FontWeight.w600,
          ),
          TextWidget(
            text: "Show all",
            size: 14.sp,
            color: Colors.blue.shade700,
          ),
        ],
      ),
    );
  }
}
 
 
 /**GetBuilder<FetchData>(
                  builder: (getSnap) {
                    return ListView.builder(
                        itemCount: getSnap.postModels.length,
                        itemBuilder: (ctx, indx) {
                          return ListTile(
                            title: Text(getSnap.postModels[indx].title.toString()),
                          );
                        });
                  },
                ), */