import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counterController.dart';
import 'package:get/get.dart';


class OtherScreen extends StatelessWidget {
 // const OtherScreen({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find(); //Access the data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Screen was clicked  ${_counterController.counter.value} times")),

           SizedBox(
            height: 10,
          ),

          Center(
            child: ElevatedButton(onPressed: (){
              Get.back(); //We do not need to define the context, this is made possible by using GetMaterialApp
            }, child: const Text("Open Home Screen"),),
          )
        ],
      ),


    );
  }
}
