import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 0.obs; //obs make the int observable

  //Method to increment the observable

void increment() {
  counter ++;
}

}