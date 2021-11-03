// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   final double height;
//   VoidCallback? onPressed;
//   PageController? pageController;
//   @override
//   Size get preferredSize => Size.fromHeight(height);

//   String? title;
//   AppBarWidget(
//       {this.height = kToolbarHeight, this.title,this.onPressed ,this.pageController, Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       centerTitle: true,
//       elevation: 0,
      
//       // titleSpacing: 30,
//       backgroundColor: Colors.transparent,
//       leading: Platform.isIOS
//           ? IconButton(
//               onPressed: onPressed,
//               icon: Icon(CupertinoIcons.back, size: 20.sp),
//             )
//           : IconButton(
//               onPressed: onPressed,
//               icon:  Icon(
//                 Icons.arrow_back,
//                 size: 20.sp,
//                 color: Colors.black,
//               ),
//             ),
            
//       title: Text(
//         title!,
//         style:
//             TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20.sp),
//       ),
//     );
//   }
// }

