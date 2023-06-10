



import 'package:get/get.dart';
import 'package:shoccho/Screen/auth/login/controllers/login_controllers.dart';

class LOGINBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LOGINCONTOLLERS>(() => LOGINCONTOLLERS());
  }

}