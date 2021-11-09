import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttergetx/screens/home/components/head.dart';
import 'package:fluttergetx/screens/home/components/horizontal_lists.dart';
import 'package:fluttergetx/screens/home/components/tile.dart';
import 'package:fluttergetx/widgets/custom_text_widget.dart';
import 'package:get/get.dart';

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
      backgroundColor: Colors.grey.shade100,
      extendBodyBehindAppBar: true,
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Headers(),
              circularTabPage(),
              makeRowText("Trending"),
              const HorizontalLists(),
              makeRowText("Categories"),
              ...List.generate(3, (index) =>  TileView(title:sex[index] ,subtitle:items[index],icons: icons[index],))
            ],
          ),
        ),
      ),
    );
  }

  TabPageSelector circularTabPage() {
    return TabPageSelector(
      color: Colors.blueGrey.withOpacity(0.4),
      indicatorSize: 12,
      controller: tabController,
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

List<String> sex= ["Man","Woman", "Child"];
List<String> items= ["+3453","+5642", "+11356"];
List<String> icons = [
    "http://cdn.onlinewebfonts.com/svg/img_958.png",
    "https://cdn1.iconfinder.com/data/icons/user-outline-icons-set/144/User_Female-512.png",
    "https://www.seekpng.com/png/full/33-332895_children-comments-icon-children-png.png"
  ];