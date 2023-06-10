

import 'package:get/get.dart';
import 'package:shoccho/Screen/auth/forgot/controller/forgot_controller.dart';

class FORGOTBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FORGOTCONTROLLER>(() => FORGOTCONTROLLER());
  }

}