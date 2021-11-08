import 'package:fluttergetx/models/product.dart';
import 'package:get/get.dart';

class Addcart extends GetxController {
  List<Product> listTiles = [];
  setProduct({valueName, valuePrice, valueSize}) {
    listTiles.add(Product(
        productName: valueName,
        pruductPrice: valuePrice,
        pruductSize: valueSize));
    update();
  }

  count(String cases, int index) {
    switch (cases) {
      case "+":
        listTiles[index].counter += 1;
        break;
      case "-":
        listTiles[index].counter -= 1;
    }
    update();
  }
}
