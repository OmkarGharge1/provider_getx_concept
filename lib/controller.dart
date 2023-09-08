import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CountController extends GetxController{

RxInt counter = 1.obs;

void increment(){
  counter.value++;
}

}