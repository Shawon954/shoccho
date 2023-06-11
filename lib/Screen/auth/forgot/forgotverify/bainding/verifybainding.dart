
import 'package:get/get.dart';
import 'package:shoccho/Screen/auth/forgot/forgotverify/controller/verifycontroller.dart';

class VERIFYBAINDING extends Bindings{
  @override
  void dependencies() {
Get.lazyPut<VERIFYCONTROLLER>(() => VERIFYCONTROLLER());
  }

}