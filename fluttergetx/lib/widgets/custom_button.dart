
// import 'package:flutter/material.dart';
// import 'package:fluttergetx/widgets/custom_text_widget.dart';

// class ElButtonWidget extends StatelessWidget {
//   String? text;
//   VoidCallback? onPressed;
//   double? width;
//   double? height;
//   Color? color;
//   Color? textColor;
//   double? textsize;
//   FontWeight? weight;
//   double? radius;

//   ElButtonWidget(
//       {Key? key,
//       this.text,
//       this.onPressed,
//       this.width,
//       this.height,
//       this.color = Colors.black,
//       this.textColor,
//       this.textsize,
//       this.weight,this.radius})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         minimumSize: Size(width!, height!),
//         primary: Colors.black,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       child: TextWidget(
//         color: textColor,
//         text: text,
//         weight: weight,
//         size: textsize,
//       ),
//       onPressed: onPressed,
//     );
//   }
// }
