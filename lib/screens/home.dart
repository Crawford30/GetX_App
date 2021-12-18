import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counterController.dart';
import 'package:flutter_app_getx/screens/other.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {

  // const HomeScreen({Key? key}) : super(key: key);
  //We use put to register our controller and inside the 'Put' we enter our call controller
  final CounterController counterController = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {

    //===It should return an Obx object which method returns a widget to update the UI
    return Obx(() =>
        Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Center(child: Text("Clicks: ${counterController.counter.value}")),
                const SizedBox(
                  height: 10,
                ),

                Center(
                  child: ElevatedButton(onPressed: (){
                    Get.to(OtherScreen());
                  }, child: const Text("Open Other Screen"),),
                )
              ]
          ),

          floatingActionButton: FloatingActionButton(onPressed: (){ counterController.increment();},
            child: Icon(Icons.add),),
        )


    );



  }
}
