
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shoccho/Screen/splash/controllers/splash_controller.dart';

class SPLASHBINDING extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<SPLAHCONTROLLER>(() => SPLAHCONTROLLER());
  }


}