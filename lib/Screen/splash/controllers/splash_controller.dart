
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shoccho/Route/app_route.dart';

class SPLAHCONTROLLER extends GetxController{

  final count =0.obs;

  @override
  void onInit() {


  }

  @override
  void onReady() {

    super.onReady();
  }

  @override
  void onClose() {

    super.onClose();
  }





  void increment() => count.value++;

}