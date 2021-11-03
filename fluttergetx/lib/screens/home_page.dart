import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
//.obs we add .obs to a variable, 
//we basically convert it to a stream of variables.
// This stream is 'reactive',
// which means it can change value
// in reaction to events (like click of a button). 
  final Rx<bool> _isAdmin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//Obx Listens to observable (obs) changes.
// Controller needs to already be declared/initialized elsewhere to use.
              Obx(
                () => Text(
                  "SetState: $_isAdmin",
                  style:
                      const TextStyle(color: Colors.greenAccent, fontSize: 18),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _isAdmin.value = !_isAdmin.value;
                },
                child: const Text("CLick Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
