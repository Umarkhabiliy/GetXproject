import 'package:fluttergetx/models/product.dart';
import 'package:get/get.dart';

class Addcart extends GetxController {
  List<Product> listTiles = [];
  setProduct({valueName, valuePrice, valueSize, valueColor}) {
    listTiles.add(Product(
        productName: valueName,
        pruductPrice: valuePrice,
        pruductSize: valueSize,
        productColor: valueColor));
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
