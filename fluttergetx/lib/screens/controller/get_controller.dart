import 'dart:convert';

import 'package:fluttergetx/models/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FetchData extends GetxController {
  var baseUrl = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  List<Post> postModels = [];
  @override
  // we can completely remove StatefulWidget
  // by using GetxController.
  // GetxController has onInit() and onClose() methods.
  // we can replace initState() and dispose() methods in StatefulWidget.

  void onInit() {
    super.onInit();
    getPosts();
  }

  Future<void> getPosts() async {
    final requestUrl = await http.get(baseUrl);

    if (requestUrl.statusCode == 200) {
      postModels = (jsonDecode(requestUrl.body) as List)
          .map((e) => Post.fromJson(e))
          .toList();
    } else if (requestUrl.statusCode != 200) {
      throw Exception("Error");
    }
    update();
  }
}
