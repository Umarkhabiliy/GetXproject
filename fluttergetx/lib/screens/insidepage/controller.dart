import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ButtonController extends GetxController {
  int selectedIndex = 1;
  int selectedCircle = 1;
  List<Color> colors = List.generate(5, (index) => Colors.transparent);
  List<Color> colorsCircle = List.generate(5, (index) => Colors.transparent);
  buttonClicked(index) {
    selectedIndex = index;
    colors = List.generate(5, (index) => Colors.transparent);
    colors[selectedIndex] = Colors.blue.shade400;
    update();
  }

  cicrleClicked(index) {
    selectedCircle = index;
    colorsCircle = List.generate(5, (index) => Colors.transparent);
    colorsCircle[selectedCircle] = Colors.blue.shade400;
    update();
  }

  @override
  void onInit() {
    colors[selectedIndex] = Colors.blue.shade400;
    super.onInit();
  }
}
