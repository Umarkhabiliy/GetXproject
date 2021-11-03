// import 'package:flutter/material.dart';

// class CustomTextFormFieldLite extends StatefulWidget {
//   // sets the duration for the animation
//   // default is 500 milliseconds
//   final Duration animationDuration;

//   // sets the width of the textformfield
//   final double width;

//   // sets the height of the textformfield
//   // default is set to 48.0
//   final double height;

//   // toogles between a shadow and a very light border
//   // default is false
//   final bool hasShadow;

//   // background color of the textformfield
//   // default color is #EEEEEE
//   final Color backgroundColor;

//   // the corner radius of the textformfield when it does not have focus
//   // default is 16.0
//   final BorderRadius cornerRadius;

//   // the corner radius of the textformfield when it is focused
//   // default is 8.0
//   final BorderRadius focusedCornerRadius;

//   // sets the text style of both the text and the hintText
//   // default is an empty string
//   final TextStyle? textStyle;

//   // sets the hint text
//   // this is blank by default
//   final String hintText;

//   // validator is a function that returns a string
//   // if the entered text is invalid
//   // return null if it is valid
//    VoidCallback? validator;

//   // toggles between obscuring text and keeping plain text
//   // recommended for fields that take sensitive information like passwords
//   // default is false
//   final bool obscureText;

//   // defines the TextInputType
//   // default is TextInputType.text
//   final TextInputType? inputType;

//   // defines the focusNode
//   final FocusNode? focusNode;

//   // defines the TextEditingController
//   final TextEditingController? controller;

//   // defines the TextInputAction
//   // default is TextInputAction.done
//   final TextInputAction? textInputAction;

//   // defines the color when the textformfield has focus
//   // default is Colors.white
//   final Color focusColor;

//   // sets the cursor color
//   // default is #0A2552
//   final Color cursorColor;

//   // these are generic textformfield parameters
//   final int? maxLength, minLines, maxLines;
// final bool? autocorrect;
// final bool? autofocus;
// final EdgeInsets? margin;
// final ValueChanged<String>? onChanged, onSubmitted;
// final bool? enabled;
//   final GestureTapCallback? onTap;

//    CustomTextFormFieldLite(
//       {Key? key,
//       this.animationDuration = const Duration(milliseconds: 500),
//       required this.width,
//     this.focusNode,
//       this.height = 48.0,
//        this.inputType,
//       this.controller,
//       this.margin = const EdgeInsets.all(10),
//       this.obscureText = false,
//       this.backgroundColor = const Color(0xFFEEEEEE),
//       this.cornerRadius = const BorderRadius.all(Radius.circular(16)),
//       this.focusedCornerRadius = const BorderRadius.all(Radius.circular(8)),
//       this.cursorColor = const Color(0xff0a2552),
//       this.focusColor = Colors.white,
//       this.hintText = "",
//       this.hasShadow = false,
//       this.textStyle,
//       this.validator,
//       this.autofocus = false,
//       this.autocorrect = false,
//       this.enabled = true,
//       this.maxLength,
//       this.maxLines,
//       this.minLines,
//       this.onChanged,
//       this.onTap,
//       this.textInputAction,
//       this.onSubmitted})
//       :
//         super(key: key);

//   @override
//   _CustomTextFormFieldLiteState createState() =>
//       _CustomTextFormFieldLiteState();
// }

// class _CustomTextFormFieldLiteState extends State<CustomTextFormFieldLite> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: widget.width,
//         height: widget.height,
//         margin: widget.margin,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           boxShadow: const[
//             BoxShadow(
//               color: Colors.black38,
//               blurRadius: 1.0,
//               // has the effect of softening the shadow
//               spreadRadius: 0.5,
//               // has the effect of extending the shadow
//               offset: Offset(
//                 0.0, // horizontal, move right 10
//                 0.0, // vertical, move down 10
//               ),
//             )
//           ],
//           borderRadius: widget.cornerRadius,
//           color: widget.backgroundColor,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: TextFormField(
//             decoration: new InputDecoration.collapsed(
//               hintText: widget.hintText,
//               hintStyle: widget.textStyle,
//             ),
//             style: widget.textStyle,
//             controller: widget.controller,
//             validator: widget.validator,
//             obscureText: widget.obscureText,
//             keyboardType: widget.inputType,
//             autofocus: widget.autofocus,
//             autocorrect: widget.autocorrect,
//             focusNode: widget.focusNode,
//             enabled: widget.enabled,
//             maxLength: widget.maxLength,
//             maxLines: widget.maxLines,
//             minLines: widget.minLines,
//             onChanged: widget.onChanged,
//             onTap: () {
//               if (widget.onTap != null) {
//                 widget.onTap();
//               }
//             },
//             onFieldSubmitted: (t) {
//               widget.onSubmitted(t);
//             },
//             textInputAction: TextInputAction.done,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TextFormFieldWidget extends StatelessWidget {
//   TextFormFieldWidget({
//     Key? key,
//     this.hinttext,
//     this.textInputAction,
//     this.textInputType,
//     this.textEditingController,
//     this.obscureText = false,
//     this.onChanged,
//     this.onSaved,
//   }) : super(key: key);

//   String? hinttext;
//   TextInputAction? textInputAction;
//   TextInputType? textInputType;
//   TextEditingController? textEditingController;
//   bool? obscureText;
//   void Function(String)? onChanged;
//   void Function(String?)? onSaved;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       toolbarOptions: const ToolbarOptions(
//           copy: true, paste: true, selectAll: true, cut: true),
//       onSaved: onSaved,
//       onChanged: onChanged,
//       obscureText: obscureText!,
//       keyboardType: textInputType,
//       textInputAction: textInputAction,
//       controller: textEditingController,
//       decoration: InputDecoration(
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         hintText: hinttext,
//         hintStyle: const TextStyle(color: fieldTextinput),
//         border: OutlineInputBorder(
//           borderSide: const BorderSide(
//             color: Colors.black26,
//             width: 1,
//           ),
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//     );
//   }
// }
