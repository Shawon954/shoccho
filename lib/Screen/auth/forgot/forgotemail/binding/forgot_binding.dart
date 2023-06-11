

import 'package:get/get.dart';
import 'package:shoccho/Screen/auth/forgot/forgotemail/controller/forgot_controller.dart';

class FORGOTEMAILBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FORGOTCONTROLLER>(() => FORGOTCONTROLLER());
  }

}