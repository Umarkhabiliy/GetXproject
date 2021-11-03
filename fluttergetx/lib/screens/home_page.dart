import 'package:flutter/material.dart';
import 'package:fluttergetx/screens/controller/get_controller.dart';
import 'package:get/get.dart';

//That's where GetWidget shines...
// as you can use it, for example,
// to keep a list of Todo items.
//So, if the widget gets "rebuilt",
// it will keep the same controller instance.
class MyHomePage extends GetWidget<FetchData> {
  MyHomePage({Key? key}) : super(key: key);
//.obs we add .obs to a variable,
//we basically convert it to a stream of variables.
// This stream is 'reactive',
// which means it can change value
// in reaction to events (like click of a button).
  final Rx<bool> _isAdmin = false.obs;
  final FetchData fetchData = Get.put(FetchData());
//Get.put makes the dependency available to all the child routes.
// So, in case we need to access the same instance in some other class,
// we can do that using Get.find.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                 await fetchData.getPosts();
                },
                child: const Text("Click Me"),
              ),
             SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: GetBuilder<FetchData>(
                  builder: (getSnap) {
                    return ListView.builder(
                        itemCount: getSnap.postModels.length,
                        itemBuilder: (ctx, indx) {
                          return ListTile(
                            title: Text(getSnap.postModels[indx].title.toString()),
                          );
                        });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
