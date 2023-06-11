import 'package:get/get.dart';
import 'package:shoccho/Screen/auth/forgot/forgotnewpass/controller/newpasscontroller.dart';

class NEWPASSBAINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NEWPASSCONTROLLER>(() => NEWPASSCONTROLLER());
  }


}